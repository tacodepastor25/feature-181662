import unittest
import psycopg2
import re
import ipaddress
import os

SQL_FILE_PATH = "03_query_data.sql"

class TestDataTypesDemo(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.conn = psycopg2.connect(
            dbname="test_db",
            user="postgres",
            password="postgres",
            host="localhost",
            port="5432"
        )
        cls.cursor = cls.conn.cursor()

    @classmethod
    def tearDownClass(cls):
        cls.cursor.close()
        cls.conn.close()

    def test_table_exists(self):
        self.cursor.execute("""
            SELECT EXISTS (
                SELECT FROM information_schema.tables WHERE table_name = 'data_types_demo'
            );
        """)
        self.assertTrue(self.cursor.fetchone()[0])

    def test_column_types(self):
        expected_types = {
            'id': 'integer',
            'name': 'character varying',
            'description': 'text',
            'price': 'numeric',
            'discount': 'real',
            'available': 'boolean',
            'created_at': 'timestamp without time zone',
            'launch_date': 'date',
            'uuid_col': 'uuid',
            'ip_address': 'inet',
            'mac_address': 'macaddr',
            'tags': 'ARRAY',
            'metadata': 'jsonb',
            'coordinates': 'point',
            'file_data': 'bytea'
        }
        self.cursor.execute("""
            SELECT column_name, data_type FROM information_schema.columns
            WHERE table_name = 'data_types_demo';
        """)
        columns = dict(self.cursor.fetchall())
        for col, dtype in expected_types.items():
            self.assertIn(col, columns)
            self.assertTrue(dtype in columns[col], f"{col} should be {dtype}")

    def test_sample_data_values(self):
        self.cursor.execute("SELECT * FROM data_types_demo LIMIT 1;")
        row = self.cursor.fetchone()
        self.assertIsInstance(row[0], int)  # id
        self.assertIsInstance(row[1], str)  # name
        self.assertIsInstance(row[2], str)  # description
        self.assertIsNotNone(row[6])        # created_at
        self.assertIsNotNone(row[7])        # launch_date
        self.assertRegex(str(row[8]), r'^[0-9a-fA-F-]{36}$')  # UUID
        ipaddress.ip_address(row[9])        # IP address
        self.assertRegex(str(row[10]), r'^([0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}$')  # MAC
        self.assertIsInstance(row[11], list)  # tags
        self.assertIsInstance(row[12], dict)  # JSONB
        self.assertRegex(str(row[13]), r'^\([0-9\.\-]+,[0-9\.\-]+\)$')  # point
        self.assertIsInstance(row[14], (bytes, memoryview))  # bytea

    def test_sql_file_exists_and_has_queries(self):
        self.assertTrue(os.path.exists(SQL_FILE_PATH), f"{SQL_FILE_PATH} does not exist")
        with open(SQL_FILE_PATH, 'r', encoding='utf-8') as f:
            content = f.read().strip()
        self.assertGreater(len(content), 0, "SQL file is empty")
        # Check for at least one SQL statement keyword
        self.assertRegex(content.upper(), r'\\b(SELECT|INSERT|UPDATE|DELETE|CREATE)\\b', "SQL file must contain valid SQL statements")

if __name__ == '__main__':
    unittest.main()

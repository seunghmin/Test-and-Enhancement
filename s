import unittest
from unittest.mock import patch
from calculator import Calculator

class TestCalculator(unittest.TestCase):
    def test_add(self):
        calc = Calculator()
        self.assertEqual(calc.add(2, 3), 5)

    def test_subtract(self):
        calc = Calculator()
        self.assertEqual(calc.subtract(5, 3), 2)

    def test_multiply(self):
        calc = Calculator()
        self.assertEqual(calc.multiply(4, 6), 24)

    def test_divide(self):
        calc = Calculator()
        self.assertEqual(calc.divide(10, 2), 5)

    def test_divide_by_zero(self):
        calc = Calculator()
        with self.assertRaises(ValueError):
            calc.divide(10, 0)

if __name__ == '__main__':
    unittest.main()

import unittest
from projects.calculator.calculator import Calculator


class TestSum(unittest.TestCase):
    def test_sum(self):
        c = Calculator()
        self.assertEqual(c.add(1, 2), 3)


if __name__ == "__main__":
    unittest.main()

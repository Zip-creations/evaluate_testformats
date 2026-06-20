import unittest


class TestBasic(unittest.TestCase):

    def test_neg(self):
        self.assertTrue(True)

    def test_pos(self):
        self.assertTrue(False)

    @unittest.skip("this test will be skipped, to show how skipped tests are handled")
    def test_skip(self):
        self.assertTrue(True)

    def test_same_name(self):
        self.assertTrue(True)


if __name__ == "__main__":
    unittest.main()

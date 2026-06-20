import pytest

def test_neg():
    assert True

def test_pos():
    assert False

@pytest.mark.skip(reason="this test will be skipped, to show how skipped tests are handled")
def test_skip():
    assert True

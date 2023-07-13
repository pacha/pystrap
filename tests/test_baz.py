import pytest

from foobar.app import Baz


def test_model():
    baz = Baz.from_dict({"spam": "a"})
    assert baz.eggs == "aaa"

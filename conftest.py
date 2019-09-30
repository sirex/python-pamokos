import pytest


@pytest.fixture(autouse=True)
def add_np(doctest_namespace, mocker):
    doctest_namespace['mocker'] = mocker

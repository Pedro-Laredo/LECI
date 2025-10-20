import pytest
from fib import fibonacci

def test_inferior_1():
    print("Testa comportamento com n < 1")
    assert fibonacci(-1) == []
def test_inferiror_2():
    assert fibonacci(0) == [0]

def test_inferior_3():
    assert fibonacci(2) == [0,1,1] 


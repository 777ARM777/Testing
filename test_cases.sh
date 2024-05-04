#!/bin/bash

# Define the test cases
test_cases=(
    "[1, 2, 3, 4, 5]"
    "[0]"
    "[10, 20, 30]"
    "[5, 10, 15, 20, 25]"
    "[1, 3, 5, 7, 9, 11, 13]"
    "[2, 4, 6, 8, 10]"
    "[0, 0, 0, 0, 0, 0, 0, 0, 0, 0]"
    "[]"
    "[1.5, 2.5, 3.5, 4.5, 5.5]"
    "['a', 'b', 'c']"
    "[1, 'two', 3.0, 4, 'five']"
    "[i for i in range(100)]"
)
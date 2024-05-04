#!/bin/bash

source test_cases.sh

# Define the Python functions in strings
python_function_student='
from sandbox.student import get_mean as get_mean_student
'

python_function_author='
from sandbox.author import get_mean as get_mean_author
'

# Loop through each test case
for case in "${test_cases[@]}"; do
    # Call the Python function with the test case
    result_student=$(python3 -c "
$python_function_student
try:
    print(get_mean_student($case))
except Exception as e:
    print(type(e))
")

    result_author=$(python3 -c "
$python_function_author
try:
    print(get_mean_author($case))
except Exception as e:
    print(type(e))
")

    if [ "$result_student" == "$result_author" ]; then
        echo "Test case for $case passed"
    else
        echo "Test case for $case failed"
    fi
done

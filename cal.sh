#!/bin/bash

# Function to display options and get the operation
echo "Choose an operation:"
echo "1. Addition (+)"
echo "2. Subtraction (-)"
echo "3. Multiplication (*)"
echo "4. Division (/)"

# Read operation choice
read -p "Enter choice [1-4]: " choice

# Read two numbers
read -p "Enter first number: " num1
read -p "Enter second number: " num2

# Perform the chosen operation
#case $choice in
    1)
        result=$(echo "$num1 + $num2" | bc)
        echo "Result: $num1 + $num2 = $result"
        ;;
    2)
        result=$(echo "$num1 - $num2" | bc)
        echo "Result: $num1 - $num2 = $result"
        ;;
    3)
        result=$(echo "$num1 * $num2" | bc)
        echo "Result: $num1 * $num2 = $result"
        ;;
    4)
        # Check for division by zero
        if [ "$num2" -eq 0 ]; then
            echo "Error: Division by zero is not allowed."
        else
            result=$(echo "scale=2; $num1 / $num2" | bc)
            echo "Result: $num1 / $num2 = $result"
        fi
        ;;
    *)
        echo "Invalid choice."
        ;;
esac

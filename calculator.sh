#!/bin/bash

addition()
{
read -p "Enter the first number:" num1
read -p "Enter the second number:" num2
echo "The Sum of $num1 and $num2 = $[num1+num2]"

}

subtraction()
{
read -p "Enter the first number:" num1
read -p "Enter the second number:" num2
echo "The Difference between $num1 and $num2 = $[num1-num2]"

}

multiplication()
{
read -p "Enter the first number:" num1
read -p "Enter the second number:" num2
echo "The Product of $num1 and $num2 = $[num1*num2]"
}

division()
{
read -p "Enter the first number:" num1
read -p "Enter the second number:" num2
echo "The Quotient of $num1 and $num2 = $[num1/num2]"
}

echo "Choose one option"

echo "a) Addition"
echo "b) Subtraction"
echo "c) Multiplication"
echo "d) Division"


read choice

case $choice in

a)addition;;
b)subtraction;;
c)multiplication;;
d)division;;
*)echo " Wrong Option"
esac

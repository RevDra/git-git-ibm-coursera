#!/bin/bash

# -------------------------------------------------------------------------
# Script: simple-interest.sh
# Description: A simple bash script to calculate simple interest.
# Formula: SI = (P * R * T) / 100
# License: Apache License 2.0
# -------------------------------------------------------------------------

echo "-------------------------------------------------------"
echo "            Simple Interest Calculator                 "
echo "-------------------------------------------------------"

# Read Principal Amount
echo -n "Enter the principal amount (P): "
read p

# Read Rate of Interest
echo -n "Enter the annual rate of interest (R) in %: "
read r

# Read Time Period
echo -n "Enter the time period in years (T): "
read t

# Calculation using 'bc' for floating-point support
# scale=2 ensures the result has two decimal places
si=$(echo "scale=2; ($p * $r * $t) / 100" | bc)
total=$(echo "scale=2; $p + $si" | bc)

echo "-------------------------------------------------------"
echo "Results:"
echo "Principal: $p"
echo "Interest Rate: $r%"
echo "Time Period: $t years"
echo "-------------------------------------------------------"
echo "Total Interest Earned: $si"
echo "Total Balance (P + I): $total"
echo "-------------------------------------------------------"

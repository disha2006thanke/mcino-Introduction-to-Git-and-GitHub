
#!/bin/bash

echo "Enter the principal amount:"
read -r principal

echo "Enter the rate of interest:"
read -r rate

echo "Enter the time period in years:"
read -r time

interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "Simple Interest: $interest"

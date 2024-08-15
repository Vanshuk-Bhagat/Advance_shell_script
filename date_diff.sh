#!/bin/bash

# Define the two dates
date1="2023-08-01"
date2="2024-08-13"

# Calculate the difference in days
diff_days=$(($(($(date -ud "$date2" +%s) - $(date -ud "$date1" +%s))) / 86400))

# Print the result
echo "The difference between $date1 and $date2 is $diff_days days."


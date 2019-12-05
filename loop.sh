#!/bin/sh

# Basic for loop
for i in /etc/rc.*; do
  echo $i
done

# Reading lines
< README.md | while read line; do
  echo $line
done

# C-like for loop
for ((i=0; i<100; i++)); do
  echo $i
done

# Forever
#while true; do
#  ...
#done

# Ranges
for i in {1..5}; do
  echo "Welcome $i"
done
# With step size
for i in {5..50..5}; do
  echo "Welcome $i"
done
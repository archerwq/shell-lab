#!/bin/sh

# Defining arrays
Fruits=("Apple" "Banana" "Orange")
echo ${Fruits[@]}
Fruits[0]="Grape"
Fruits[3]="Pare"
echo ${Fruits[@]}

# Operations
Fruits=("${Fruits[@]}" "Watermelon")      # Push
echo ${Fruits[@]}
Fruits+=('Watermelon')                    # Also Push
echo ${Fruits[@]}
Fruits=( ${Fruits[@]/Gr*/} )              # Remove by regex match
echo ${Fruits[@]}
unset Fruits[2]                           # Remove one item
echo ${Fruits[@]}
NewFruits=("${Fruits[@]}")                # Duplicate
echo ${Fruits[@]}
Fruits=("${Fruits[@]}" "${NewFruits[@]}") # Concatenate
echo ${Fruits[@]}
#lines=(`cat "logfile"`)                  # Read from file

# Working with arrays
echo ${Fruits[0]}           # Element #0
echo ${Fruits[@]}           # All elements, space-separated
echo ${#Fruits[@]}          # Number of elements
echo ${#Fruits}             # String length of the 1st element
echo ${#Fruits[3]}          # String length of the Nth element
echo ${Fruits[@]:3:2}       # Range (from position 3, length 2)

# Iteration
for i in "${Fruits[@]}"; do
  echo $i
done
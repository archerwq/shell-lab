#!/bin/sh

# Defining
declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

# Working with dictionaries
echo ${sounds[dog]} # Dog's sound
unset sounds[dog]   # Delete dog
echo ${sounds[@]}   # All values
echo ${!sounds[@]}  # All keys
echo ${#sounds[@]}  # Number of elements

# Iterate over values
for val in "${sounds[@]}"; do
  echo $val
done

# Iterate over keys
for key in "${!sounds[@]}"; do
  echo $key
done
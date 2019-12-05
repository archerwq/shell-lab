#!/bin/sh




# printf
printf "Hello %s, I'm %s\n" Sven Olga
printf "1 + 1 = %d\n" 2

a=10
b=$((a+200)) # add 200 to $a
echo $b

for i in {1..10}; do
  echo $((RANDOM%=200)) # random number 0..200
done


: '
Redirection:
python hello.py > output.txt   # stdout to (file)
python hello.py >> output.txt  # stdout to (file), append
python hello.py 2> error.log   # stderr to (file)
python hello.py 2>&1           # stderr to stdout
python hello.py 2>/dev/null    # stderr to (null)
python hello.py &>/dev/null    # stdout and stderr to (null)
python hello.py < foo.txt      # feed foo.txt to stdin for python
'

# Subshells
(cd ..; echo "I'm in $PWD")
pwd # still in first directory

# Inspecting commands
command -V cd

# Reading input
echo -n "Proceed? [y/n]:"
read ans
echo $ans

# Go to previous directory
pwd
cd ..
pwd
cd -
pwd


: '
Special variables:
$?	Exit status of last task
$!	PID of last background task
$$	PID of shell
$0	Filename of the shell script
'
echo $? $! $$ $0

# Check for command's result
if ping -c 1 google.com; then
  echo "It appears you have a working internet connection"
else
  echo "Bad connection"
fi

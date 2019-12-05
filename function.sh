#!/bin/sh

: '
Arguments:
$# Number of arguments
$* All arguments
$@ All arguments, starting from first
$1 First argument
'

# Basic
get_name() {
    echo "John"
}
echo "You are $(get_name)"

# Alternate syntax, with argument
function myfunc() {
    echo "Hello $1"
}
myfunc "John"

# Returning values
myfunc1() {
    local myresult='some value'
    echo $myresult
}
result="$(myfunc1)"

# Raising errors
myfunc2() {
    return 1 # non zero represents failure
}

if myfunc2; then
  echo "success"
else
  echo "failure"
fi
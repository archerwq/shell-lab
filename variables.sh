#!/bin/sh

NAME="John"
echo $NAME
echo ${NAME}
echo "My name is $NAME"
echo "My name is ${NAME}"

: '
Exported variables such as $HOME and $PATH are available to (inherited by) other programs run by the shell 
that exports them (and the programs run by those other programs, and so on) as environment variables. 
Regular (non-exported) variables are not available to other programs.
'
env | grep '^variable=' # No environment variable called variable
variable=Hello # Create local (non-exported) variable with value
env | grep '^variable=' # Still no environment variable called variable
export variable # Mark variable for export to child processes
env | grep '^variable='
export other_variable=Goodbye  # create and initialize exported variable
env | grep '^other_variable='

: '
Note that non-exported variables will be available to subshells run via ( ... ) and similar 
notations because those subshells are direct clones of the main shell.
'
othervar=present
(echo $othervar; echo $variable; variable=elephant; echo $variable)
echo $variable
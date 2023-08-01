## Intro: 
_1st line is special: `#!/bin/sh`_; it specifies the type of script (read by compiler)

### running scripts
* to run a script:
  * go to the directory of the script
  * write `bash script-name.sh` or `./script-name.sh`?
* to change permissions:
  * to execute the file we have to make it executable by the **u**ser using this line of code: `chmod u+x script-name.sh`
  * the 1st letter designate a group from these groups:
    * 1st user is the **owner**, don't remove w from owner : )
    * 2nd is the **group**, u can create users and add them to a group
    * 3rd is other **users**, couls be a guest
  * a + to add, - to revoke
  * permissions are mainly 3:
    * read ***r***
    * write ***w***
    * execute ***x***
* to run a global command
  * add it to the global `$PATH` variable
  * `export PATH="$PATH:$HOME/Documents/scripts-programs/scripting/bash scripts"`
  * basically says add to `$PATH` the `$HOME/Documents/scripts-programs/scripting/bash scripts` directory vy the : seperator
  * this way we don't need to run this script from all directories
  * because when we run a command the 1st thing it does is look it up in the path variable
  * **p.s. if we modify the path from the terminal it's only modified i this particular session. If we close the session it will no longer be in it. to make it permenant edit .bash_profile via nano** `nano .bash_profile`
  * we can alias it to another name `alias script='script.sh'` so by only using the alias the command will work

### variables: 
_check [this script](variables.sh)_
* don't use uppercase (uppercase are ***enviromental variables***)
* types:
  * scalar: single value
    * space-sensitive
    * creating it: no $ sign
    * referencing it: add $ before it, considers it a string
    * getting the length: `${#variable_name}`
  * array:
    * create it with ()
    * seperate values by a space
    * referencing a value at index 0: `${array_name[0]}`
* arguments:
  * the first argument is the name of the script, referenced by `$0`
  * if u reference an argument that doesn't exit: returns empty
  * number of arguments is $#

### Conditions
_check this script [here](conditions.sh)_
* put [] and after them you have to put space
* syntax for an if is this way:
```
if [ condition ]
then
fi
```
* syntac for if-elif-else:
```
if [ ]; then
elif [ ]; then
else
fi
```
* instead of going to a new line after [ ] a ; is possible followed by a then
* indentation is not mandatory
* the control structures:
  * -ne: not equal
  * -eq: equal
  * -lt: less than
  * -le: less tahn or equAL
  * -gt: greater than
  * -ge: greater or equal
  * -a: and
  * -o: or
  * !: negation
  * =: equal
  * !=: not equal
  * -z: empty string
  * -n: non empty string
  * -s: is non 0 size
  * -e: does the resource exist
  * -f: is the resource a file
  * -d: ... directory
  * -r: ... readable
  * -w: ... writable
  * -x: ... executable
#### switch case
* the syntax is `case _`
* really weird syntax check the [script](./case.sh)
* `;;` is for ending a condition
* `*)` means everything else
* end everything with `esac`

### loops
_similar to python_  
check the [script](llops.sh)
* for loop:
  * syntax is `for x in 1 2 3 4 5; do ____; done` for example
  * or it could be for a list `{1...10}` is numbers from 1 to 10?
* while loop
  * like if takes a `[ condition ]`
  * can find `shift`, removes the 1st argument on the left (it's like looping over the arguments!!)

### expressions
[_check here_](expressions.sh)
* command using `$(_cmd here_)`
* mathmatical exp using `$((_exp here_))`
* ***note***:_any variables inside the () will be written w\o $_
* floating points bit weird

### functions
check [_here_](functions.sh)

### read
check [_here_](read.sh)
* `read` is used to input

### grep
check [_here_](grep.sh)
* `grep -n` line index next to the line where the match
* `grep -c --- ----` same as `grep ___ ___ | wc -l`
* `grep -i` ignores case
* `grep -E` extends to all RegEx

### sed
<!--Search and replace; check [_here_](sed.sh) -->
* syntax is `sed 's/find/replace/g'
* `-i` will do it inline on the file; **EDIR FILE IN PLACE**
* `-i.orig` will save a backup file; _very powerful_

### awk
powerful command to output columns from a text file based on a seprator
* `awk -F seperator '{ print column_number }'`
* `$NF` as column_number means ?? 

### Exercises
* **Write a shell script that will:**  
  1. display the files and directories (using ls *) if no argument was provided
  2. if an argument was provided, the script should execute "ls -l"  
  [_solution_](ex1.sh)
* **Write a shell script that will:**
  check if the argument is a file  
  [_solution_](ex2.sh)
* **Write a shell script that will:**
  display all the files in a directory using loops  
  [_solution_](ex3.sh)
* **Write a shell script that will:**
  check from arguments if file is verbose, long and save its name in the script  
  [_solution_](ex4.sh)
* **Write a shell script that will:**
  execute ex4.sh if it's readable _(`source` is like import)_  
  [_solution_](ex5.sh)
* **Write a shell script that will:**
  implement a function that sums the arguments  
  [_solution_](ex6.sh)
* **Write a shell script that will:**
  take the 1st and 2nd columns where the 3rd column is hiphop
  [_solution_](ex7.sh)
* **Write a shell script that will:**
  we have a shells file that contain all the found shells
  [_solution_](ex8.sh)

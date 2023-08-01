# Regex in python  
To use the regex feature in python: import the regex libarary  
`import re`  
## Some methods:  
* **match(pattern, string)**: returns an Object of type re.Match, is null if there is no match
* **findall(pattern,string)**: returns a list of all matches
* **split(pattern,string)**: returns a list of all strings split by these patterns
* **sub(pattern,replace_pattern,string)**: retruns a new string where the pattern is replaced by replace_pattern. *sub is for substitute*
* **sub(pattern,replace_pattern,string,num)**: returns a tuple of the string with the first num occurences substituted, and the number of substitutions
* **search(pattern,string)**: returns the first occurence of the match with the span indices
* **findall(pattern,string)**: returns a list of the meatched patterns, if no group was inside the pattern, it will retrieve the whole match. If we add one group to this pattern and we run the code we will get the match group only. if 2 groups then we'll get tuples of all groups as items in the list

### Methods on re.Match object:
*it's always better to check if null before actually using them*  
* **start()**:the index where it starts
* **end()**: the index at which it ends
* **group(n)** returns the nth matching group
* **span()**: returns the start and end in a tuple
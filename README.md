Estadistica
===========

Statistics Stuff in Haskell
-----------------------------

Requeriments:

Data.List
Data.List.Split
System.Environment

=============================================
### How to use:
First Argument: input file (must end in yyy/mm/dd )
2nd Argument: output file (name can be anything)

example:

`Estadistica /home/ozkar/Code/SE/2013/09/14 /home/ozkar/Result.txt`

the progams adds a line to Result.txt, separated by spaces with the Date in YYY-MM-DD format,
the mean, the standard deviation, the mode, and the size of the input file samples.

where they should be (also separated by spaces) the time in HH:MM 24 hour format and followed by a value.

### Example:

/home/ozkar/code/SE/2013/09/14 should contain:
 
```
20:45 50
20:50 40
20:55 45
21:00 53
```

only the values from the right are taken into account, for the program.

and result would be something like this:

Result.txt:

`2013-09-15 3.0 1.4142135623730951 5.0 5.0`

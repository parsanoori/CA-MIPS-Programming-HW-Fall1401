## Implement a perfect number detector  

Implement a perfect number detector in the file `perfect.asm` using MIPS assembly.  
A perfect number is a number which equals all of its non equal divisors.  

## Function

Identify perfect number.  


### Input

In the only line of the input, $n$ the number to check whether it is perfect or not is given.  


### Output

Print either `YES` or `NO`.  

### Input Example 1

```
28
```

### Output Example 1

```
YES
```

### Input Example 2
```
96
```

### Output Example 2
```
NO
```


## How score is calculated?

The final score consists of two parts. Fifty percent of it is for passing the tests and the other is for the oral presentation.  

The tests score is acheived by running the `run.sh` bash script.  
It requires a unix-like operating system with `bash`, `python3` and `mars` installed on it and.  
Take a look at lines 36 and 37 of the `run.sh`. Here by commenting out each line and uncommenting the other, you can choose the assembler you want. You have to options:  
1. Use `spim` as the assembler. This way tests are run more quick but some syscalls are not available. By using this way you have to have `spim` installed.
2. Use `mars` as the assembler. This way tests are run slower but more syscalls are available (like random). By using this you have to have `java` installed.

To make sure that the script works fine, checkout the sort branch.  

***Finally***: Have fun and do not cheat.

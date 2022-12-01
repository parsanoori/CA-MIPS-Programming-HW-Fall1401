## Implement Hanoi tower's problem's solution 

Implement Hanoi Tower's problem's solution in the `hanoi.asm` file using MIPS assembly.  

## Function

Solves the Hanoi tower's problem.  


### Input

In the only line of the input, $n$ the number of disks on rod A will be given.  


### Output

Print the steps required to solve the problem.  

### Input Example 1

```
3
```

### Output Example 2

```
A->C
A->B
C->B
A->C
B->A
B->C
A->C
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

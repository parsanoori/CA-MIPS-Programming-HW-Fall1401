## A sorting algorithm implementation in MIPS

Implement a sorting algorithm algorithm in the `sort.asm` file.  

***Attention***: Implementing any an algorithm with $\theta(n \log n)$ runtime would have extra points.  

## Function

It simply sort an array.


### Input

In the first line, the count of the numbers to sort, n, is given.   
In the next n lines the elements of the array are given.


### Output

In each line of the output print each element of the ascending sorted array.

### Input Example 1

```
5
1
5
3
4
2
```

### Output Example 2

```
1
2
3
4
5
```


## How score is calculated?

The final score consists of two parts. Fifty percent of it is for passing the tests and the other is for the oral presentation.  

The tests score is acheived by running the `run.sh` bash script.  
It requires a unix-like operating system with `bash`, `python3` and `mars` installed on it and.  
Take a look at lines 36 and 37 of the `run.sh`. Here by commenting out each line and uncommenting the other, you can choose the assembler you want. You have to options:  
1. Use `spim` as the assembler. This way tests are run more quick but some syscalls are not available. By using this way you have to have `spim` installed.
2. Use `mars` as the assembler. This way tests are run slower but more syscalls are available (like random). By using this you have to have `java` installed.

To make sure that the script works fine, change the `quicksort.asm` in line 35 of `run.sh` to `mergesort.asm` and run the script.

***Finally***: Have fun and do not cheat.

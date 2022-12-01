## A sorting algorithm implementation in MIPS

Implement a sorting algorithm algorithm in the `sort.asm` file.  

***Attention***: Implementing any an algorithm with $\theta(n\logn)$ runtime would have extra points.  

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
It requires a unix-like operating system with `bash` and `python3` and `mars` installed on it and.  

***Important***: Since the tests are run usings `mars` you need JVM.   

For getting a feel on how tests are run, change the `quicksort.asm` in line 35 of `run.sh` to `mergesort.asm` and run the script.

***Finally***: Have fun and do not cheat.

# A201 Exercise—Newton iteration

## authorized resources

 your instructor, your course notes, course materials and other cadets (but do not copy any of another cadet’s work)



## background 

We discussed the Newton’s method for iteration. We use this method to converge on a future value for eccentric anomaly, given the future value for mean anomaly.

The method used for converging on a solution in AstroEngr 310 may not always converge in a reasonable number of iterations for all cases. Newton’s method uses knowledge of the relationship between eccentric anomaly and mean anomaly to make better guesses. It therefore results in convergence in fewer iterations.

Your exercise is to write an algorithm and function that computes future eccentric anomaly (E­f) using Newton’s method and a given eccentricity (e) and future mean anomaly (Mf). Use a convergence criteria of $|E_{n+1}-E_n| < 1\times10^{-8} $.



## tasks

1. Write an algorithm for a function that will calculate future eccentric anomaly (E­f), given eccentricity (e) and future mean anomaly (Mf).

2. Write an m-file function called `newton.m` that will:

   - Take eccentricity and mean anomaly as inputs to calculate the eccentric anomaly, using Newton’s method of iteration as outlined in the lesson.

   - newton.m details:

   - inputs: eccentricity and mean anomaly (radians)

   - outputs: eccentric anomaly (radians)

   - format of the function line: `[Ef] = newton(ecc,Mf)`



## submittal 

- [ ] algorithm
- [ ] documented code
- [ ] test case results
- [ ] hand calculations



## algorithm



## test case results

| ecc  | Mf   | Ef   |
| ---- | ---- | ---- |
|      |      |      |
|      |      |      |
|      |      |      |
|      |      |      |



## hand calculations

![](../sources/hand_calc_example.jpg)

 

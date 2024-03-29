# A201 Exercise—Math Functions (part 2)

## authorized resources

 your instructor, your course notes, course materials and other cadets (but do not copy any of another cadet’s work)

## background

In this exercise you will document and validate the two functions that you wrote earlier:

- `mag.m`
- `vecangle.m`

Follow the USAFA/DFAS documentation standards illustrated in the file `example_add.m` in this directory.  

### mag.m

`mag.m` will determine magnitude of a three-dimensional input vector. You will use this function extensively over your tenure as an engineering major.

### vecangle.m

`vecangle.m` takes two, three-dimensional input vectors and determines the angle between the two vectors using the following relationship:

$$
\vec{A} \cdot\vec{B} = |A||B|\cos\theta
$$

where $\theta$ is the angle between $\vec{A}$ and $\vec{B}$.

## tasks

1. **`mag.m`** Write an m-file function that will find the magnitude of a 3x1 vector.
- input: vector (*not* separate variables for each component)

- output:  vector magnitude
2) **`vecangle.m`** Write an m-file function that will find the angle between two input vectors.
   
   - inputs
     - Vector 1
     - Vector 2
   - output
     - The smaller (less than pi radians) angle between the two vectors
     - (must output radians)

3) submit both files (mag.m and vecangle.m) and complete submission.md in this folder 
   
   - complete, save, push all new/changed files
   
   - create pull request 
     
     - base: feedback <- compare: main
   
   - add your instructor as a reviewer

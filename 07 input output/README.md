# A201 Exercise—Input Output Exercise



## authorized resources

 your instructor, your course notes, course materials and other cadets (but do not copy any of another cadet’s work)



## background

We have discussed how to import and export data from a text file. 

There is a file called vector.dat on the in the lesson folder. The file has 6 numbers, representing the 3 components of the position vector and 3 components of the velocity vector for an object in orbit. All six numbers are in one row. 

In this exercise you will write two m-files: one to import the data into Matlab’s workspace and one to export the data to a formatted output file. The algorithms are provided at the end of this file.



## submittal

- [ ] `getposvel.m`
  - [ ] documented code
  - [ ] test case results from `[posvec,velvec]=getposvel('vector.dat')`
    (put expected and actual values in a comparison table)

- [ ] `writevec.m`
  - [ ] documented code
  - [ ] test case results from`writevec('posdata.dat',posvec, 'position vector', 'i', 'j' ,'k')`
    Where `posvec` is from `getposvel` test. You must use appropriately sized `%x.yf` formats for the numbers
    (put expected and actual values in a comparison table)




## test case results

### getposvel.m

| expected | actual |
| -------- | ------ |
|          |        |
|          |        |
|          |        |

### writevec.m

| expected | actual |
| -------- | ------ |
|          |        |
|          |        |
|          |        |



## provided algorithms 



### getposvel.m

This function will:

- import the first 3 numbers into a column vector (3x1) 

- import the last 3 numbers into a column vector (3x1) 

 

#### inputs

- filename – the name of the file with the input data

 

#### outputs

- vec1 – position vector (km)

- vec2 – velocity vector (km/s)

 

#### process

Open the file: filename

Read vec1 from the input file, a (3x1) vector

Read vec2 from the input file, a (3x1) vector

Close the input file

End getposvel.m



### writevec.m

This function will:

- create a .dat output file with the name of the user’s choice

- on the first line of the output file, label the vector with a label of the user’s choice

- on the second line of the output file print each vector component with a label of the user’s choice  (depends on coordinate frame – e.g.  x,y,z or i,j,k, etc.)



#### inputs

- filename           - the output filename           

- v                - a (3x1) vector (any units)

- label             - the vector label

- comp1            - component 1 label

- comp2            - component 2 label

- comp3            - component 3 label



#### outputs

- No returned values but it does create an output file



#### process

Open an output file named: filename

On the first line of the file write the string in: label

On the second line of the file write: v(1,1), comp1, v(2,1), comp2, v(3,1), comp3

The overall format of the two lines above should have this format (character spacing is important):

```
position vector
-2693.3244i 6428.3838j 4491.3425k 
```

Close the output file

End writevec.m

 

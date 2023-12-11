# A201 Exercise—algorithm 



## authorized resources

 your instructor, your course notes, course materials and other cadets (but do not copy any of another cadet’s work)



## background

We’ve discussed the importance of structured programming. 

This exercise requires no Matlab code—only algorithms for a process. Realize that you will need a main algorithm and separate algorithms for any sub-functions you write. Include all equations needed and write them so that any programmer could write a working program from them.

Your exercise is to write an algorithm for how you would:

Import 2-dimensional vectors (units of km), one at a time, from a file (you don’t know how many vectors there are). Your program must calculate the magnitude of the vector, print it to a text file, and then read the next vector (if any).

*You are required to have at least one sub-function when you write this algorithm.*



## tasks

Write an algorithm set to accomplish the above tasks. Be sure you start with the main steps and then fill in the details down to the equation level.

**Use the “example algorithm” section of this file as a template to start.**



## submittal

- [ ] algorithm for main program (title, inputs, outputs, process with comments)
- [ ] algorithm for sub-function(s) (title, inputs, outputs, process with comments)



## example algorithm 



### compute_properties algorithm

Given a file with sets of input values (see below), compute corresponding output values (see below) to be printed to the screen.

 

#### inputs

File containing sets of:

- Altperigee    - altitude of perigee (km)
- Altapogee    - altitude of apogee (km)

 #### outputs 

For each set of data print to the screen:

- ​    a        - semi-major axis (km)
- ​    e        - eccentricity

 

#### process

Open the input file

Loop until no more data in the file

- Read Data
  - Scan in values Altperigee, Altapogee
- Use aecalc to get the requested parameters
  - [a,e]=aecalc(Altperigee, Altapogee)
- Print the data to the screen
  - Print “Altitudes of perigee and apogee are:”, Altperigee, Altapogee
  - Print “a, e are:“, a,e

End Loop

Close the input file

End of compute_properties



### aecalc algorithm

Compute the size and shape of an orbit given the perigee and apogee altitudes. 

#### inputs

File containing sets of:

- Altperigee    - altitude of perigee (km)
- Altapogee    - altitude of apogee (km)

 #### outputs 

For Each set of data print to the screen:

- ​    a        - semi-major axis (km)
- ​    e        - eccentricity

 

#### process

Define the radius of the Earth

- REarth = 6378.137

Convert Altperigee to Rperigee

- Rperigee=Altperigee+ REarth

Convert Altperigee to Rperigee

- Rapogee=Altapogee+ REarth

Find the semi-major axis

- a=(Rapogee+Rperigee)/2

 Find the eccentricity

- e=(Rapogee-Rperigee)/ (Rapogee+Rperigee)

 End of aecalc

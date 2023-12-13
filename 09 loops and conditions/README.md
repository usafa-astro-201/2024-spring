# A201 Exercise—conditionals



## authorized resources

your instructor, your course notes, course materials and other cadets (but do not copy any of another cadet’s work)



## background

We have discussed logical statements, conditional statements, and loops. 

In this exercise you will practice these by writing two short m-files that do the same thing in different ways:

- `revchecklong.m`

- `revcheck.m`

In some cases, you may end up with an angle that is greater than 360 degrees or 2pi radians or an angle that is less than zero. We will need to express these angles as their equivalents in the range 0-360° or 0-2pi radians.

For example:

- 732° -> 12°

- 7pi radians -> pi radians

- -12° -> 348°

Note: Normally we don’t use degrees in our programs but if we are reading in an angle in degrees, it is useful to have this function to put those degrees in the range 0-360° 



## tasks 

Convert the `revcheck.m` and `revchecklong.m` algorithms below into Matlab code so that they can be called using:

- `[angleout] = revchecklong(anglein, modby)`

- `[angleout] = revcheck(anglein, modby)`



## submittal

- [ ] `revchecklong.m`
  - [ ] documented code
  - [ ] test case results 
  - [ ] hand calculations (be sure to test all paths through code)

- [ ] `revcheck.m`
  - [ ] documented code
  - [ ] test case results 
  - [ ] hand calculations (be sure to test all paths through code)
- [ ] test script




## test case results

### revchecklong.m

| input | expected | actual |
| ----- | -------- | ------ |
|       |          |        |
|       |          |        |
|       |          |        |

### revcheck.m

| input | expected | actual |
| ----- | -------- | ------ |
|       |          |        |
|       |          |        |
|       |          |        |



## hand calculations

(crop appropriately)

![](../sources/hand_calc_example.jpg)



## provided algorithms 



### revchecklong

An intuitive way to adjust angles to be in the range 0 to modby. It can take a long time because when the angles are very big or very small it must loop many times.

 #### inputs

- anglein      - input angle (rad or deg)

- modby      - maximum angle allowed (2*pi or 360)
  **Note**: modby = 2*pi if anglein is in radians, modby = 360 if anglein is in degrees


 #### outputs 

- angleout    - output angle (rad or deg)

 #### process

if anglein >= 0 and anglein < modby then  % do nothing

​	angleout = anglein        

elseif anglein >= modby           % angle too big

​	% subtract modby’s until the angle is in the correct range

​	angleout = anglein

​	while angleout >= modby      

​		angleout = angleout - modby

​	end % while

 else                     % angle is negative

​	% add modby’s until the angle is positive

​	angleout = anglein

​	while angleout < 0   

​		angleout = angleout + modby

​	end % while

 end % if angle

 

### revcheck

A fast way to adjust angles to be in the range 0 to modby.

 #### inputs

- anglein      - input angle (rad or deg)

- modby      - maximum angle allowed (2*pi or 360)
  **Note**: modby = 2*pi if anglein is in radians, modby = 360 if anglein is in degrees


 #### outputs 

- angleout    - output angle (rad or deg)

 #### process

Find out how many modby’s there are in the input angle:

​	revs = anglein/modby

This is not usually an integer, so we round it to an integer (k) to get the value of full revolutions that we need to subtract:

​	k = floor(revs)

Subtract those integer number of modby’s (note: if k is negative it effectively adds modby’s)

​	angleout = anglein - modby*k

The three equations can be combined into one code line or coded as three lines as desired.


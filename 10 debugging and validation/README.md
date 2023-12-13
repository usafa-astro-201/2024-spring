# A201 Exercise—debugging 



## authorized resources

 your instructor, your course notes, course materials and other cadets (but do not copy any of another cadet’s work)



## background

We’ve given you some tools to debug code in Matlab. Here’s your chance to put some of those tools to work.

In this exercise, you will be given a Matlab function that has errors in it. 

The function you’ll start with is called `badintro.m` (found in this lesson’s folder.) For a set of five initial velocities and angles of projectiles, it is supposed to calculate: 

1. flight time 

$$
T_{flight} = \frac{2 V_{vert}}{a}
$$

2. maximum height reached
$$
alt_{max} = \frac{{V_{vert}}^2}{2a}
$$

3. maximum horizontal distance traveled 
$$
D = V_{horiz} T_{flight}
$$


$T_{flight}$ is time of flight 
$V_{horiz}$ is horizontal velocity
$V_{vert}$ is vertical velocity
$Alt_{max}$ is maximum altitude
$D$ is horizontal distance traveled
$a$ is acceleration due to gravity

You may use any method to calculate test cases. 



## tasks 

1. Starting with the m-file *badintro.m*, find all the errors in the program and debug it so it provides reliable values for the intended calculations.
2. Determine a test case to validate the answer for at least one of the five cases.



## submittal

- [ ] fixed `badintro.m` code
- [ ] test case results for the five cases
- [ ] hand calculations for one of the cases (for validation)




## test case results

|          | $v_0$ | $\theta_0$ | flight time | distance | max altitude |
| -------- | ----- | ---------- | ----------- | -------- | ------------ |
| expected |       |            |             |          |              |
| actual   |       |            |             |          |              |
| expected |       |            |             |          |              |
| actual   |       |            |             |          |              |
| expected |       |            |             |          |              |
| actual   |       |            |             |          |              |
| expected |       |            |             |          |              |
| actual   |       |            |             |          |              |
| expected |       |            |             |          |              |
| actual   |       |            |             |          |              |



## hand calculations

(crop appropriately)

![](../sources/hand_calc_example.jpg)

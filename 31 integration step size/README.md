# A201 Exercise—integration step size

## authorized resources

 your instructor, your course notes, course materials and other cadets (but do not copy any of another cadet’s work)



## background 

Determining the correct step size to use in integration is very important. This exercise gives you the opportunity to examine the effects of changing the step size.  

Use the Simulink model you created last lesson to do your analysis. 

## tasks

Add a “Display” module to the y component output. Then double click it and set format to “long”.

Hint: Run wgs84data before running this simulation (if you don’t, it will give an incorrect final value of 0.3675)

Change the Stop or Final time to 7.5 seconds.

Go to Modeling Tab\Model Settings (or Simulation/Model Configuration Parameters on older versions) and select fixed step size, ode1 and a step size of 1. Run the model and record the final value (**at least 6 digits to the right of the decimal**).

Repeat the process for step sizes of  0.1, 0.01, 0.001 and 0.0001, but leave the stop time the same. 

Plot step size on a logarithmic x-axis vs y values on the y axis to see convergence

Finally compare the final values with the “truth” value (exact analytic solution) determined from:
$$
y_f = y_0 + \dot{y}_0 t_f + \frac{1}{2} a {t_f}^2
$$

$$
a = -\frac{\mu}{r^2}
$$

$r=6378.137$ km
$\mu=398600.5$ km^3^ s^-2^



## submittal 

- [ ] simulink model `numerical_integration.slx`
- [ ] table of step sizes vs Y values
- [ ] truth value
- [ ] plot of step size vs Y values (with logarithmic x-axis)



## results 



### step size

| step size (s) | Y values |
| ------------- | -------- |
|               |          |
|               |          |
|               |          |



### truth value

(include at least 6 digits right of the decimal)



## figure

use this syntax to add your image: `![]()`


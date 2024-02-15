# A201 Project—COE to RV

## grading checklist

- [ ] project complete

All of the following are required in order to receive credit for completion. Your instructor will check off your completed sections and provide comments below or on the files you submit. Copy your work below this cover checklist.

- [ ] simulink model
  
  - [ ] `*.slx` file
  - [ ] cropped screenshot of the model

- [ ] all `*.m` files called by your simulink model—documented as necessary

- [ ] correct answers for cases 3–5 of `RV2.dat` (within 0.01 km position accuracy). 
  
  - [ ] Include expected vs actual tables with values listed to the thousands place
  - [ ] hand calculations

- [ ] additional sufficient test cases and comparison table
  
  - [ ] Explain why you needed extra test cases or why you didn’t. 

## authorized resources

 your instructor, your course notes, course materials and other cadets (but do not copy any of another cadet’s work)

## objective

The objective for Project COE Propagation is to write a SIMULINK numerical integration simulation that determines the future R and V vectors of an Earth orbiting object given its initial R and V vectors and a time of flight.

## requirements

Your simulation should accept the initial R & V vector data from the MatLab Workspace and send the resulting *numerically integrated* R & V vectors back to the Workspace (using a “To Workspace” block) for printing of final vectors and plotting of data. Make use of the Data Display library block to monitor results during the simulation. While there are no Astro Department standards for documentation of SIMULINK flow diagrams, label blocks sufficiently so that a reader can understand what the various signals represent. Also, produce a title and author line for the simulation within the diagram’s window.

## simulation specifications

The following is a description of the inputs to your simulation and the information your simulation must generate:

GIVEN:

- initial **I, J, K** components of the position vector $\vec{R}$ (km)

- initial **I, J, K** components of the velocity vector $\vec{V}$ (km/s)

- time of flight **tof** (sec)

FIND:

- future **I, J, K** components of the position vector $\vec{R}$ (km)
- future **I, J, K** components of the velocity vector $\vec{V}$ (km/s)

## organization

While there are no standards for organizing SIMULINK diagrams, they are most easily readable if the inputs are on the left, signals flow from left to right and outputs are on the right. Try to minimize the number of signal line crossings for readability.

NOTE! This project will have a VERY similar format to the Numerical Integration lesson. It is probably easiest to copy that Simulink model and modify it for this project.

## additional requirements

No specific functions are required. However, any m files that you create must be documented. You may also want to create a script file to produce the required plot.

You must use constants from `wgs84data.m` 

Your program inputs are from the file `RV2.dat`. Units are km, km/s, s. The format for each line is:

```
R(1), R(2), R(3), V(1), V(2), V(3), TOF
```

You do NOT need to read the inputs directly from `RV2.dat`. You can cut and paste R, V and TOF data from the file for each of the three runs required. (Run case 3, change the inputs, run case 4, etc.) 

Once you have your simulation working, use your plotting skills to produce a 3 dimensional plot of your R vectors over the course of the simulation for case 3. Use rplot.m to do this (see below.)

## hints

If your answers are not close and/or take a very long time to run, check Modeling Tab… Model Settings… and make sure you are using Type: Variable-step and Solver: ode45 (or auto).

If your answers are close but not close enough, one thing that can help is to tell Simulink to compute the answer more accurately. This can be done under the Modeling Tab… Model Settings… menu item. In the Solver options change the Relative Tolerance to a smaller number. This often defaults to 1e-3, but using something like 1e-8 to 1e-12 will give much better results.

If your answers are close and the above does not fix it, check the properties of the Display block and make sure “Decimation” is 1. This tells how often the display is updated in number if integration steps.

If you get an rplot “Index…” error check the “To Workspace” block and verify that that the Save Format is set to Array (not Timeseries).

If rplot produces a straight line or no line: 

1) Make sure Stop Time is the correct number of seconds (not 10). 
2) In the Constant (initial value) Blocks make sure the box “Interpret vector parameters as 1-D” is checked in both blocks. 
3) Make sure that in the Interpreted Matlab Function block that “Collapse 2-D results to 1-D” is checked.

If rplot gives long line curving away from the Earth, the two-body equation in the Interpreted Matlab function may be missing a negative sign

## test case results

|     | expected | actual |
| --- | -------- | ------ |
|     |          |        |
|     |          |        |
|     |          |        |
|     |          |        |
|     |          |        |

## hand calculations

(crop appropriately)

![](../sources/hand_calc_example.jpg)

## additional test cases

Explain why you did or did not need additional test cases. If necessary, include a table of results. 

## function information

The following function is used to plot your position vectors from within the Matlab command window, after you have run your Simulink program.  It is not a function that is used directly by your Simulink program. It is supplied for you in the Projects folder. Typically it is called from the command window similar to this: 

### rplot

`function rplot(out.simout)`   

function rplot(R)

This function produces a 3 dimension plot of the time history of a satellite’s position vector, R.

#### input

**R** – position vectors (an n x 3 array) in km

#### output

A graphics window with a 3-D plot of the satellite’s positions

# A201 Exercise—plotting

## authorized resources

your instructor, your course notes, course materials and other cadets (but do not copy any of another cadet’s work)

## background

In this exercise you will practice some of the plotting commands. Try to accomplish as much as possible in a single script file.

## tasks

1. In Matlab, create and save variables for this exercise by opening and running `create_data.m`. Running these commands will save the variables `t`, `x`, and `y` to the matlab data file `data.mat`. You will load a fresh copy of those the variables every time you run your script by including the command `load('data.mat')` in your script.
   
   ```matlab
   t = 0:pi/50:10*pi
   x = sin(t)
   y = cos(t)
   
   save('data.mat')
   ```
2) Edit `plot_data.m` for this exercise. Clear workspace variables and load t, x, and y from the matlab data file `data.mat`. (This step is already in `plot_data.mat`.)

3) Plot x vs. y. Add a title and axis labels (whatever you want to call them.) Also, make both axes from -2 to 2.

4) In a second window make a 3-D plot of x, y, t.

5) In the first plot keep the original plot and plot on top of it, t vs. x. (i.e. t is on the horizontal axis)

6) Save both figures and insert them into your readme document. 

# 

# A201 Exercise—simulink export

## authorized resources

your instructor, your course notes, course materials and other cadets (but do not copy any of another cadet’s work)

## background

We have discussed how to export data from Simulink. 

In this exercise you will produce a set of output values, export them to Matlab for plotting and then you will export them to an Excel spreadsheet and plot them there.

## tasks

Create a Simulink program that generates a sine wave and sends it to a “To Workspace” block and a “scope” block. 

Save the simulink output to a file with this command in the command window: `save('simulink_output.mat','out')`.

Load the simulink output before plotting using these commands in your script: 

```matlab
clearvars; clc; 
load('simulink_output.mat'); 
```

Create 3 plots of output (y-axis) vs time (x-axis). Save each plot as an image and include in `submission.md`.

1. simulink scope output
   - export to figure
   - save figure as svg and include in `submission.md`
2. scripted matlab plot
   - `plot(xaxisvariable,yaxisvariable)`
   - use your script to save figure as svg 
     - `saveas(gcf, 'filename.svg')`
   - include in `submission.md`
3. excel plot
   - copy data from workspace variable to excel
   - plot it
   - save a screenshot with `win`-`shift`-`S`
   - paste the screenshot into `submission.md` in marktext

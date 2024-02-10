# A201 Project—COE Propagation

## grading checklist

- [ ] project complete

All of the following are required in order to receive credit for completion. Your instructor will check off your completed sections and provide comments below or on the files you submit. Copy your work below this cover checklist.

- [ ] algorithms: 1 for the main script; 1 for each sub-function
  Could someone duplicate your program from this?
- [ ] clear, concise, documented m-file code
- [ ] correct answers for provided test cases in `RV3.dat`
  Cases 3 & 4 will need to be modified in `RV3.dat`to include 1 orbit TOF
  - [ ] Create a table of expected vs actual 
    (just true anomaly since it is the only new output)
  - [ ] supporting hand calculations 
  - [ ] include the output file in your repository
- [ ] additional test cases and comparison table
  Explain why you needed extra test cases or why you didn’t. 
  Remember to test all cases of `coeupdate.m`

## authorized resources

 your instructor, your course notes, course materials and other cadets (but do not copy any of another cadet’s work)

## objective

The objective for Project COE Propagation is to write a MATLAB script file that first determines the classic orbital elements of an Earth orbiting body given its current R and V vectors, as you did in Project R&V to COEs, and then determines future classic orbital elements given a time of flight via a function called coeupdate, and finally outputs results to a file for later printing. Use the restricted 2-body assumptions when propagating the orbit.

## requirements

The function `coeupdate` will be added to your developing library for use in AstroEngr 321 and other advanced astrodynamics courses. As such, it should make use of utility functions you have developed in class thus far. It should also use the wgs84 data provided in the function `wgs84data`. You must document your code in accordance with the Astro Department’s standards.

## program specifications

The following is a description of the inputs to your program and the information your program must generate:

GIVEN:

- initial **I, J, K** components of the position vector $\vec{R}$ (km)

- initial **I, J, K** components of the velocity vector $\vec{V}$ (km/s)

- time of flight **tof** (sec)

FIND:

- Semimajor axis, $a_f$ (km)

- Eccentricity, $e_f$ (unitless)

- Inclination, $i_f$ (deg)

- Right Ascension of the Ascending Node, $\Omega_f$ (deg)

- Argument of Perigee, $\omega_f$ (deg)

- True Anomaly, $\nu_f$ (deg)

Plus other items listed later in the output format.

## organization

Your program should be modular in construction. A suggested organization is depicted in the following outline. Red items are required.

```mermaid
%%{ init: { 'flowchart': { 'curve': 'stepAfter' } } }%%

graph TD;

    COE_propagation---junction1[ ]
    style junction1 height:0px;

    junction1---wgs84data; 
    junction1---id1[input function];
    junction1---ElOrb
    junction1---OrbParams;
    junction1---coeupdate;
    junction1---id2[output function];

    coeupdate---newton

%% Defining the styles
    classDef Red fill:#FF9999;
%% Assigning styles to nodes
    class wgs84data,COE_propagation,ElOrb,coeupdate,newton Red;
```

## additional requirements

All subprograms listed above must be coded in MatLab.  

You will code all vectors as “column vectors,” a matrix with 3 rows and 1 column. 

You must use constants from wgs84data.m

You can only use the wgs84 structure variable to pass wgs84data constants to functions

Edit `RV3.dat` so that Cases 3 and 4 have the correct values for 1 orbit TOF. Your program must read inputs from the file `RV3.dat`. Units are km, km/s, s. The format for each line is:

```
R(1), R(2), R(3), V(1), V(2), V(3), TOF
```

Each R, V pair must be processed and printed to the output file before reading the next R, V pair

**Do not** hard-code the number of cases or the data into the program (use a while loop)

Your program must create a file and generate the following format. (Case 2 will follow immediately after this with the same format.)

```
***************** Case    1 *****************

R (km)    =  8840.0000 I     646.0000 J    5455.0000 K    Mag=  10407.6866
V (km/s)  =    -0.6950 I       5.2500 J      -1.6500 K    Mag=      5.5469

Radius of Perigee (km) =   6260.5311
Radius of Apogee  (km) =  11134.4744
Energy    (km^2/sec^2) =    -22.9147
Period           (sec) =   8072.4025
Period          (hour) =      2.2423
Semimajor Axis    (km) =   8697.5027
Eccentricity           =      0.2802

Inclination                           (deg) =     33.9987
Right Ascension of the Ascending Node (deg) =    250.0287
Argument of Perigee                   (deg) =    255.5372
True Anomaly                          (deg) =    214.8548

Time of Flight  (Minutes) =      0.0000
Future True Anomaly (deg) =    214.8548
```

## hints

You can use RV_to_COE to validate most of your numbers, but you will need to validate the future true anomaly for each case another way. (The future true anomalies for most cases are very easy to determine.) 

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

## required function information

The following functions MUST be written and used in the appropriate places. The names of the input or output variables may be adapted to fit your needs. (Note: vectors are in all caps and scalars are all lowercase)

### coeupdate

`function [af,eccf,inclf,raanf,argpf,nuf]=coeupdate(ai,ecci,incli,raani,argpi,nui,tof,wgs84)   `   

This function "updates" the orbital elements after some time of flight (tof) using restricted 2-body assumptions. `coeupdate` calls `newton` which iterates Kepler's problem to solve for the future eccentric anomaly ($E_f$). `coeupdate` then finds the future true anomaly ($\nu_f$).

##### input

| variable   | description                 | units      |
| ---------- | --------------------------- | ---------- |
| $a_i$      | initial semimajor axis      | km         |
| $e_i$      | initial eccentricity        | (unitless) |
| $i_i$      | initial inclination         | rad        |
| $\Omega_i$ | initial RAAN                | rad        |
| $\omega_i$ | initial argument of perigee | rad        |
| $\nu_i$    | initial true anomaly        | rad        |
| $tof$      | time of flight              | s          |
| $wgs84$    | structure with constants    | (various)  |

##### output

| variable   | description                | units      |
| ---------- | -------------------------- | ---------- |
| $a_f$      | future semimajor axis      | km         |
| $e_f$      | future eccentricity        | (unitless) |
| $i_f$      | future inclination         | rad        |
| $\Omega_f$ | future RAAN                | rad        |
| $\omega_f$ | future argument of perigee | rad        |
| $\nu_f$    | future true anomaly        | rad        |

### newton

`function [Ef] = newton(ecc,Mf)`

This function uses Newton’s method to compute eccentric anomaly from mean anomaly.

#### input

| variable | description  | units      |
| -------- | ------------ | ---------- |
| $e$      | eccentricity | (unitless) |
| $M_f$    | mean anomaly | rad        |

#### output

| variable | description  | units |
| -------- | ------------ | ----- |
| $M_f$    | mean anomaly | rad   |

You must also use `revcheck.m` in the appropriate place.

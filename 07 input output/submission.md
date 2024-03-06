# 07 input output submission

## documentation statement

## checklist

- [ ] test script `test.m`

- [ ] `getposvel.m`
  
  - [ ] documented code
  - [ ] test case results from `[posvec,velvec]=getposvel('vector.dat')`
    (put expected and actual values in a comparison table)

- [ ] `writevec.m`
  
  - [ ] documented code
  - [ ] test case results from `writevec('posdata.dat',posvec, 'position vector', 'i', 'j' ,'k')`
    Where `posvec` is from `getposvel` test. You must use appropriately sized `%x.yf` formats for the numbers
    (put expected and actual values in a comparison table)

- [ ] output file `posdata.dat`

## test case results

### getposvel.m

test syntax: 

`[posvec,velvec]=getposvel('vector.dat')`

| expected | actual |
| -------- | ------ |
|          |        |
|          |        |

### writevec.m

test syntax:

`writevec('posdata.dat',posvec, 'position vector', 'i', 'j' ,'k')`

expected: 

```text
position
-2693.3244i 6428.3838j 4491.3425k
```

actual: 

```text
copy output from posdata.txt here
```

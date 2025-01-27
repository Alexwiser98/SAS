data survey;
input id state$ age;
datalines;
03 AL 29
16 FL 45
19 MA 31
24 PA 36
;
proc print data = survey;
run;

data new;
input id state$ age;
datalines;
14 AL 64
72 FL 23
96 MA 37
4 PA 96
;
proc print data = new;
run;

data merged;
merge survey new;
run;

proc print data = merged;
run;

proc univariate data = merged;
run;

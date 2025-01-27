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

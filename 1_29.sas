ods html close;
ods html;
data one;
input weight1 @@;
datalines;
147
152
298
304
;
data two;
input weight2 @@;
datalines;
246 229 300 309
;
data both;
merge one two;
totalWeight = weight1 + weight2;
title "this is the title";
label weight1 = 'weight1 title'
	  weight2 = 'weight2 title'
	  totalWeight = 'totalWeight title';
length status $ 10;
if totalWeight < 450 then Status = 'good';
else if totalWeight > 600 then Status = 'very bad';
else status = 'bad';
proc sort data = both out = both_sorted;
by totalweight;
proc print data = both_sorted label;
run;



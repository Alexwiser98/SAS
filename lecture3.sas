data stats;
Title 'Student Average';
input name$ age grade;
datalines;
William 20 81
James 19 76
Mary 20 88
Rachel 21 95
Jane 21 90
Michael 19 73
;
proc means data = stats maxdec = 4;

proc sort data = stats out = stats2;
by age;
run;

proc means data = stats2 maxdec=4;
var grade;
by age;
run;

proc means data = stats range var median;
run;



data students;
input Name $ Gender $ Age;
cards;
Tommy M 19
Jeremy M 22
Ren M 19
Cheryl F 20
Mary F 19
Alicia NB 21
Sandra F 19
Mike M 22
Sam NB 19
;
proc gchart data=students;
vbar3d age;
run;

data profit;
input year qtr profit @@;
title "store profit";
cards;
2010 1 3.2 2010 2 4.0 2010 3 7.7 2010 4 3.0
2011 1 6.9 2011 2 5.7 2011 3 6.9 2011 4 4.6
2012 1 5.4 2012 2 9.9 2012 3 6.3 2012 4 7.9
2013 1 4.7 2013 2 5.6 2013 3 4.7 2013 4 8.8
2014 1 3.1 2014 2 4.4 2014 3 5.0 2014 4 9.7
;
proc gchart;
vbar year / sumvar = profit discrete group = qtr subgroup=year;
run;

data chart2;
input make$ color$;
title "Color Distribution";
cards;
Toyota white
Kia black
Honda red
Honda white
Kia white
Toyota black
Toyota white
Honda white
;
proc gchart data=chart2;
donut make / value=inside percent=inside slice=outside;
run;

data chart3;
title 'Heights of Students';
input height @@;
cards;
60 72 68 64 59 75 61 70 54 63 58 67 64 60 73 67 69
;
proc univariate data=chart3;
var height;
run;




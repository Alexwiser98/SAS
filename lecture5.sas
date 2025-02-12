data survey;
infile "C:\Users\ajw79\Desktop\SAS\SAS Lecture 4 Data files\Survey.txt" dlm = ',' dsd missover firstobs=2;
input type$ number1 - number11;
run;
proc print data = survey; run;

data patient;
infile "C:\Users\ajw79\Desktop\SAS\patient data.txt";
input obsNum control$ sex$ levels death @@;
proc print data = patient (obs=10); run;

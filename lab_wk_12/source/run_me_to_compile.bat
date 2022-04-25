@echo OFF
:: This batch file manages the compiling uploading, testing and execution of lab 12 for ECEN 3763
ECHO ---------------------------------------
ECHO Lab 12: Submission
ECHO Isaac Timko 
ECHO ECEN 3763 Spring 2022
ECHO Updated: 4/25/2022
ECHO ---------------------------------------
ECHO Ready to run Flow Compile on Lab 12?
pause
quartus_sh -t IT_LAB_12.tcl | findstr /r^
 /c:"Worst-case"^
 /c:"Info: Running"^
 /c:"successful"^
 /c:"Error"^
 /c:"Info: Quartus Prime Analysis & Synthesis"^
 /c:"Info: Peak virtual memory"^
 /c:"Info: Processing ended"^
 /c:"Info: Elapsed time"^
 /c:"Info: Total CPU time"^
 /c:"Info: *"^
 /c:"Info: Quartus Prime Fitter"
ECHO Quartus Flow completed
pause
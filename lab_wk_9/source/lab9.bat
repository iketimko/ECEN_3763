@echo OFF
:: This batch file manages the compiling uploading, testing and execution of lab 9 for ECEN 3763
ECHO Running Analysis and Synthesis ... 
quartus_syn IT_LAB_9

@REM ECHO Testing the board connection and SDRAM interface ... 
@REM quartus_sh -t test.tcl
pause
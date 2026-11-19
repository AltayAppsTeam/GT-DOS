3 COLOR 15, 1
5 CLS
7 PRINT "   Welcome to Calc"
8 PRINT
10 PRINT "  Copyright (c) 2026 AltayAppsTeam (LinuxTux7)"
11 PRINT
12 PRINT " Press Enter to start the calculator"
13 PRINT " Type 'exit' to exit the program"
14 PRINT " Type 'clear' to clean the screen"
15 PRINT
16 INPUT " > ", cmd$

17 IF cmd$ = "exit" THEN END
18 IF cmd$ = "calc" THEN GOTO 20
19 IF cmd$ = "clear" THEN GOTO 3

20 REM CALCULATOR
21 INPUT "First Number: ", n1
30 INPUT "Operation: ", op$
40 INPUT "Second Number: ", n2
50 IF op$ = "+" THEN PRINT n1 + n2
60 IF op$ = "-" THEN PRINT n1 - n2
70 IF op$ = "*" THEN PRINT n1 * n2
80 IF op$ = "/" THEN PRINT n1 / n2
90 GOTO 16


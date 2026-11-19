10 CLS

20 PRINT "   Welcome to GT-DOS!"
22 PRINT
25 PRINT " Copyright (c) 2026 AltayAppsTeam (LinuxTux7)"
28 PRINT
30 PRINT "   Type 'help' to see the commands"

40 INPUT " DOS> ", cmd$

50 IF cmd$ = "help" THEN GOTO 1000
60 IF cmd$ = "exit" THEN CLS: END
70 IF cmd$ = "clear" THEN GOTO 10
80 IF cmd$ = "exerunner" THEN GOTO 500
100 IF cmd$ = "print" THEN GOTO 700
110 IF cmd$ = "time" THEN PRINT TIME$
120 IF cmd$ = "system" THEN GOTO 2500
130 IF cmd$ = "date" THEN PRINT DATE$
140 IF cmd$ = "shell" THEN GOTO 3000
150 IF cmd$ = "theme" THEN GOTO 4000
160 IF cmd$ = "files" THEN GOTO 4600
170 IF cmd$ = "calc" THEN GOTO 4800
180 IF cmd$ = "write" THEN GOTO 5000
190 GOTO 40

500 REM EXERUNNER
510 INPUT "Enter EXE file name: ", exe$
520 SHELL exe$
530 GOTO 10

700 REM PRINT
710 INPUT "Enter text: ", prn$
720 PRINT prn$
730 GOTO 40

1000 REM HELP
1005 PRINT "               COMMANDS                    "
1010 PRINT "  help      - Displays the help screen"
1020 PRINT "  exit      - Exit the GT-DOS"
1030 PRINT "  files     - Opens the GT-FILES application"
1040 PRINT "  exerunner - Runs an EXE file"
1050 PRINT "  print     - Displays text on the screen"
1060 PRINT "  date      - Shows the date"
1070 PRINT "  theme     - Allows you to select a theme"
1080 PRINT "  clear     - Clears the screen"
1090 PRINT "  system    - Displays GT-DOS information"
1100 PRINT "  time      - Shows the time"
1110 PRINT "  shell     - Writes commands to the DOS enviroment"
1120 PRINT "  calc      - Opens the GT-CALC application"
1130 PRINT "  write     - Opens the GT-WRITE application"

1200 GOTO 40

2500 REM INFO
2510 PRINT
2520 PRINT "#######  #######     Copyright (c) 2026 AltayAppsTeam (LinuxTux7)"
2530 PRINT "#           #                                  "
2540 PRINT "#   ###     #                                  "
2550 PRINT "#     #     #        DOS based Operaiting System"                          "
2560 PRINT "#######     #                                  "
2570 PRINT
2580 PRINT "####   ###  ####     Writing with BASIC (1964) "
2590 PRINT "#   # #   # #                                  "
2600 PRINT "#   # #   # ####                               "
2610 PRINT "#   # #   #    #     GT-DOS 1.2.1              "
2620 PRINT "####   ###  ####                               "
2630 PRINT
2640 GOTO 40

3000 REM SHELL
3010 INPUT "Enter DOS command: ", comm$
3020 SHELL comm$
3030 GOTO 40

4000 REM THEME
4010 PRINT "Select theme"
4020 PRINT ""
4030 PRINT " 1 - Classic"
4040 PRINT " 2 - GT Original"
4050 PRINT " 3 - Hacker"
4060 PRINT " 4 - Aqua"
4065 PRINT " 5 - Golden"
4070 PRINT " 6 - Light"
4080 PRINT " 7 - Kernel Panic"
4081 PRINT " 8 - Kernel Panic Light"
4082 PRINT " 9 - Kernel Panic Retro"
4083 PRINT " 10 - Retro"
4084 PRINT " 11 - Crystal"
4085 PRINT " 12 - Android"
4086 PRINT " 13 - IBM"
4087 PRINT " 14 - High-Contrast Alert"
4090 INPUT "Enter theme number: ", theme$
4100 IF theme$ = "1" THEN COLOR 15, 0
4110 IF theme$ = "2" THEN COLOR 15, 1
4120 IF theme$ = "3" THEN COLOR 2, 0
4130 IF theme$ = "4" THEN COLOR 3, 0
4140 IF theme$ = "5" THEN COLOR 15, 14
4150 IF theme$ = "6" THEN COLOR 0, 15
4160 IF theme$ = "7" THEN COLOR 4, 0
4170 IF theme$ = "8" THEN COLOR 4, 15
4180 IF theme$ = "9" THEN COLOR 12, 4
4190 IF theme$ = "10" THEN COLOR 15, 2
4200 IF theme$ = "11" THEN COLOR 5, 0
4210 IF theme$ = "12" THEN COLOR 0, 2
4220 IF theme$ = "13" THEN COLOR 6, 0
4230 IF theme$ = "14" THEN COLOR 14, 4
4300 GOTO 10

4600 REM FILES
4610 SHELL "GT-FILES"
4620 GOTO 10

4800 REM CALC
4810 SHELL "GT-CALC"
4820 GOTO 10

5000 REM WRITE
5010 SHELL "GT-WRITE"
5020 GOTO 10
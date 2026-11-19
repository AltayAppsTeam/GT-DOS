5 COLOR 15, 1
10 CLS
20 PRINT "   Welcome to GT-Write!"
25 PRINT
30 PRINT "    WriteDOS 1.0.4"
35 PRINT
40 PRINT "  Copyright (c) 2026 AltayAppsTeam (LinuxTux7)"
50 PRINT
60 PRINT "         Commands         "
70 PRINT "  exit - Exit the GT-Write"
95 PRINT "   new - Create a new file"
98 PRINT " clear - Clear the screen"

100 INPUT "WriteDOS> ", cmd$

110 IF cmd$ = "exit" THEN COLOR 15,0: CLS: END
120 IF cmd$ = "clear" THEN GOTO 5
140 IF cmd$ = "new" THEN GOTO 300
150 GOTO 100

300 REM NEWFILE
305 CHANN = FREEFILE
310 INPUT "Enter new file name: ", filename$
320 OPEN filename$ FOR OUTPUT AS CHANN
325 PRINT "Enter text"
330 INPUT "", text$
340 PRINT #CHANN, text$
350 CLOSE #CHANN
360 GOTO 100

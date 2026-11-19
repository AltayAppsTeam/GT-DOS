10 COLOR 15, 1
20 CLS
25 PRINT "  GT-FILES 4.1"
27 PRINT
28 PRINT "  Copyright (c) 2026 AltayAppsTeam (LinuxTux7)"
30 PRINT
40 PRINT " 1 - Delete File              2 - Clean Screen"
50 PRINT " 3 - Copy File                6 - Exit the Files"
60 PRINT " 7 - Rename the File          8 - Go up to the Parent Directory"
80 PRINT " 9 - Switch to a Folder      10 - List the Files and Folder"
81 PRINT " 4 - Create New Folder        5 - Delete Folder"

95 INPUT "FILES> ", cmd$

100 IF cmd$ = "1" THEN GOTO 300
110 IF cmd$ = "2" THEN GOTO 10
120 IF cmd$ = "3" THEN GOTO 700
130 IF cmd$ = "4" THEN GOTO 900
140 IF cmd$ = "5" THEN GOTO 1000
150 IF cmd$ = "6" THEN COLOR 15, 0: CLS: END
170 IF cmd$ = "7" THEN GOTO 1100
180 IF cmd$ = "8" THEN CHDIR ".."
190 IF cmd$ = "9" THEN GOTO 1300
200 IF cmd$ = "10" THEN GOTO 1500
210 GOTO 95

300 REM DELFILE
310 INPUT "Enter File Name: ", delfile$
320 PRINT "Are you sure? Your file will be deleted! (YES or NO)"
330 INPUT "(YES or NO): ", filecontrol$
340 IF filecontrol$ = "NO" THEN GOTO 95
350 IF filecontrol$ = "YES" THEN GOTO 360
360 KILL delfile$
370 GOTO 95

700 REM COPYFILE
710 INPUT "Enter file directory: ", copyfiledir$
720 INPUT "Enter the path to be copied: ", newcopyfile$
730 SHELL "COPY " + copyfiledir$ + " " + newcopyfile$
740 GOTO 95

900 REM CREFOLDER
910 INPUT "Enter New Folder Name: ", newfolder$
920 MKDIR newfolder$
930 GOTO 95

1000 REM DELFOLDER
1010 INPUT "Enter folder name: ", delfolder
1020 PRINT "Are you sure? Your folder will be deleted! (YES or NO)"
1030 INPUT "(YES or NO): ", foldercontrol$
1040 IF foldercontrol$ = "NO" THEN GOTO 95
1050 IF foldercontrol$ = "YES" THEN GOTO 1060
1060 RMDIR delfolder$
1070 GOTO 95

1100 REM RENAMEFILE
1110 INPUT "Enter old file name: ", oldfilename$
1130 INPUT "Enter new file name: ", newfilename$
1140 NAME oldfilename$ AS newfilename$
1150 GOTO 95

1300 REM SWITCHFOLDER
1310 INPUT "Enter the directory: ", foldername$
1320 CHDIR foldername$
1330 GOTO 95

1500 REM LISTDIR
1510 SHELL "DIR /W"
1520 PRINT
1550 GOTO 95
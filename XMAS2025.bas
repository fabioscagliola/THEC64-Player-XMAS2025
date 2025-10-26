1000 PRINT CHR$(147)
1010 FOR I = 0 TO 24
1020 PRINT
1030 NEXT

1040 REM **** PLAYER ****

1050 S = 54272
1060 FOR I = 0 TO 24 : POKE S + I, 0 : NEXT
1070 POKE S + 24, 15
1080 WF = 16
1090 A = 2 ^ (1 / 12)
1100 FOR I = 0 TO 2
1110 POKE S + 5 + 7 * I,  3 * 16 + 7
1120 POKE S + 6 + 7 * I, 10 * 16 + 9
1130 NEXT

1140 DIM PLAY(2)
1150 DIM FH(2)
1160 DIM FL(2)

1170 READ D, A$, B$, C$
1180 IF D = 0 THEN GOSUB 1590 : END
1190 V = 0
1200 X$ = A$
1210 GOSUB 1300
1220 V = 1
1230 X$ = B$
1240 GOSUB 1300
1250 V = 2
1260 X$ = C$
1270 GOSUB 1300
1280 GOSUB 1470
1290 GOTO 1170

1300 REM INIT
1310 PLAY(V) = 1
1320 N$ = MID$(X$, 1, 1)
1330 IF N$ = " " THEN RETURN
1340 IF N$ = "r" THEN FL(V) = 0 : FH(V) = 0 : PLAY(V) = 0 : RETURN
1350 S$ = MID$(X$, 2, 1)
1360 O = VAL(MID$(X$, 3, 1))
1370 N = 2 * (ASC(N$) - 65) - 1
1380 IF N$ = "f" THEN N = N - 1 : GOTO 1420
1390 IF N$ = "g" THEN N = N - 1 : GOTO 1420
1400 IF N$ = "a" THEN N = 12 : GOTO 1420
1410 IF N$ = "b" THEN N = 14
1420 IF S$ = "#" THEN N = N + 1
1430 FS = INT((466 * A ^ N) * 2 ^ O)
1440 FH(V) = INT(FS / 256)
1450 FL(V) = FS - 256 * FH(V)
1460 RETURN

1470 REM PLAY OR REST
1480 FOR I = 0 TO 2
1490 POKE S + 7 * I, FL(I)
1500 POKE S + 7 * I + 1, FH(I)
1510 POKE S + 7 * I + 4, WF + PLAY(I)
1520 NEXT
1530 IF D =  4 THEN C =    1 : GOTO 1560
1540 IF D =  8 THEN C =  300 : GOTO 1560
1550 IF D = 16 THEN C = 1100 : GOTO 1560
1560 PRINT A$, B$, C$
1570 FOR I = 0 TO C : NEXT
1580 RETURN

1590 REM EXIT
1600 FOR I = 0 TO 2
1610 POKE S + 7 * I + 4, WF
1620 NEXT
1630 PRINT CHR$(147)
1640 PRINT "xmas 2025"
1650 PRINT
1660 PRINT "laura and fabio wish you"
1670 PRINT "happy winter holidays"
1680 PRINT
1690 PRINT "sleigh ride"
1700 PRINT "by leroy anderson and mitchell parish"
1710 RETURN

1720 REM **** SONG DATA ****

1730 REM
1740 REM DURATION
1750 REM
1760 REM  1     32
1770 REM  1/2.  24
1780 REM  1/2   16
1790 REM  1/4.  12
1800 REM  1/4    8
1810 REM  1/8.   6
1820 REM  1/8    4
1830 REM

9011 DATA  4, "   ", "   ", "   "
9012 DATA  4, "   ", "   ", "   "
9013 DATA  4, "   ", "   ", "g 4"
9014 DATA  4, "   ", "   ", "r  "
9015 DATA  4, "   ", "   ", "g 4"
9016 DATA  4, "   ", "   ", "r  "
9017 DATA  4, "   ", "   ", "g 4"
9018 DATA  4, "   ", "   ", "r  "

9021 DATA  4, "c 3", "   ", "g 4"
9022 DATA  4, "   ", "   ", "r  "
9023 DATA  4, "   ", "   ", "a 4"
9024 DATA  4, "   ", "   ", "r  "
9025 DATA  4, "a 2", "   ", "g 4"
9026 DATA  4, "   ", "   ", "e 4"
9027 DATA  4, "   ", "   ", "c 4"
9028 DATA  4, "   ", "   ", "r  "

9031 DATA  4, "d 3", "   ", "d 4"
9032 DATA  4, "   ", "   ", "r  "
9033 DATA  4, "   ", "   ", "e 4"
9034 DATA  4, "   ", "   ", "r  "
9035 DATA  4, "g 2", "   ", "d 4"
9036 DATA  4, "   ", "   ", "b 3"
9037 DATA  4, "   ", "   ", "a 3"
9038 DATA  4, "   ", "   ", "r  "

9041 DATA  4, "c 3", "   ", "g 3"
9042 DATA  4, "   ", "   ", "   "
9043 DATA  4, "   ", "   ", "   "
9044 DATA  4, "   ", "   ", "   "
9045 DATA  4, "a 2", "   ", "   "
9046 DATA  4, "   ", "   ", "   "
9047 DATA  4, "   ", "   ", "   "
9048 DATA  4, "   ", "   ", "   "

9051 DATA  4, "d 3", "   ", "r  "
9052 DATA  4, "   ", "   ", "   "
9053 DATA  4, "   ", "   ", "g 4"
9054 DATA  4, "   ", "   ", "r  "
9055 DATA  4, "g 2", "   ", "g 4"
9056 DATA  4, "   ", "   ", "r  "
9057 DATA  4, "   ", "   ", "g 4"
9058 DATA  4, "   ", "   ", "r  "

9999 DATA  0, "   ", "   ", "   "


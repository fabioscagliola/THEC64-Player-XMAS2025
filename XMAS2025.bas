1010 S = 54272
1020 FOR I = 0 TO 24
1030   POKE S + I, 0
1040 NEXT
1050 POKE S + 24, 15
1060 A = 3: D = 7: SUS = 10: R = 9
1070 FOR I = 0 TO 2
1080   POKE S + 5 + 7 * I, A * 16 + D
1090   POKE S + 6 + 7 * I, SUS * 16 + R
1100 NEXT
1110 W = 16
1120 DIM FT(11)
1130 FOR I = 0 TO 11
1140   READ FT(I)
1150 NEXT
1160 DIM N$(2), F(2), PREV$(2)

1170 READ D, N$(0), N$(1), N$(2)
1180 IF D = 0 THEN GOTO 3000
1190 FOR I = 0 TO 2
1200   X$ = N$(I)
1210   IF X$ = "   " THEN F = F(I) : GOTO 1410
1215   IF X$ = PREV$(I) THEN F = F(I) : GOTO 1410
1220   N$ = LEFT$(X$, 1)
1230   IF N$ = "r" THEN F = 0 : GOTO 1410
1240   IF N$ = "c" THEN FI = 0
1260   IF N$ = "d" THEN FI = 2
1280   IF N$ = "e" THEN FI = 4
1290   IF N$ = "f" THEN FI = 5
1310   IF N$ = "g" THEN FI = 7
1330   IF N$ = "a" THEN FI = 9
1350   IF N$ = "b" THEN FI = 11

1360   IF MID$(X$, 2, 1) = "#" THEN FI = FI + 1
1361   F = FT(FI)

1369   O$ = RIGHT$(X$, 1)
1370   REM IF O$ = "2" THEN F = F / 4 : GOTO 1410
1380   IF O$ = "3" THEN F = F / 2 : GOTO 1410
1390   IF O$ = "5" THEN F = F * 2 : GOTO 1410
1400   REM IF O$ = "6" THEN F = F * 4 : GOTO 1410
1410   F(I) = F
1415   PREV$(I) = X$
1422   REM PRINT F(0),F(1),F(2)
1440   FH = F(I) / 256
1450   FL = F(I) - 256 * FH
1460   POKE S + 7 * I, FL
1470   POKE S + 7 * I + 1, FH
1480   POKE S + 7 * I + 4, W + 1
1490 NEXT
1500 GOTO 1170

3000 FOR I = 0 TO 2
3010   POKE S + 4 + 7 * I, W
3020 NEXT

8001 DATA 4291, 4547, 4817, 5103, 5407, 5728, 6069, 6430, 6812, 7217, 7647, 8101

9011 DATA  4, "   ", "   ", "   "
9012 DATA  4, "   ", "   ", "   "
9013 DATA  4, "   ", "   ", "g 5"
9014 DATA  4, "   ", "   ", "r  "
9015 DATA  4, "   ", "   ", "g 5"
9016 DATA  4, "   ", "   ", "r  "
9017 DATA  4, "   ", "   ", "g 5"
9018 DATA  4, "   ", "   ", "r  "

9021 DATA  4, "c 4", "   ", "g 5"
9022 DATA  4, "   ", "   ", "r  "
9023 DATA  4, "   ", "   ", "a 5"
9024 DATA  4, "   ", "   ", "r  "
9025 DATA  4, "a 3", "   ", "g 5"
9026 DATA  4, "   ", "   ", "e 5"
9027 DATA  4, "   ", "   ", "c 5"
9028 DATA  4, "   ", "   ", "r  "

9031 DATA  4, "d 4", "   ", "d 5"
9032 DATA  4, "   ", "   ", "r  "
9033 DATA  4, "   ", "   ", "e 5"
9034 DATA  4, "   ", "   ", "r  "
9035 DATA  4, "g 3", "   ", "d 5"
9036 DATA  4, "   ", "   ", "b 4"
9037 DATA  4, "   ", "   ", "a 4"
9038 DATA  4, "   ", "   ", "r  "

9041 DATA  4, "c 4", "   ", "g 4"
9042 DATA  4, "   ", "   ", "   "
9043 DATA  4, "   ", "   ", "   "
9044 DATA  4, "   ", "   ", "   "
9045 DATA  4, "a 3", "   ", "   "
9046 DATA  4, "   ", "   ", "   "
9047 DATA  4, "   ", "   ", "   "
9048 DATA  4, "   ", "   ", "   "

9051 DATA  4, "d 4", "   ", "r  "
9052 DATA  4, "   ", "   ", "   "
9053 DATA  4, "   ", "   ", "g 5"
9054 DATA  4, "   ", "   ", "r  "
9055 DATA  4, "g 3", "   ", "g 5"
9056 DATA  4, "   ", "   ", "r  "
9057 DATA  4, "   ", "   ", "g 5"
9058 DATA  4, "   ", "   ", "r  "

9999 DATA  0, "   ", "   ", "   "


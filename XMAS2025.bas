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

2010 DIM N$(2), F(2)
2020 READ D, N$(0), N$(1), N$(2)
2030 PRINT N$(0), N$(1), N$(2)
2040 IF D = 0 THEN GOTO 3010
2050 FOR I = 0 TO 2
2060   IF N$(I) = "   " THEN F = F(I) : GOTO 2230
2070   N$ = LEFT$(N$(I), 1)
2080   IF N$ = "-" THEN F = 0 : GOTO 2230
2090   IF N$ = "c" THEN FI = 0
2100   IF N$ = "d" THEN FI = 2
2110   IF N$ = "e" THEN FI = 4
2120   IF N$ = "f" THEN FI = 5
2130   IF N$ = "g" THEN FI = 7
2140   IF N$ = "a" THEN FI = 9
2150   IF N$ = "b" THEN FI = 11
2160   IF MID$(N$(I), 2, 1) = "#" THEN FI = FI + 1
2170   F = FT(FI)
2180   O$ = RIGHT$(N$(I), 1)
2190   IF O$ = "2" THEN F = F / 4 : GOTO 2230
2200   IF O$ = "3" THEN F = F / 2 : GOTO 2230
2210   IF O$ = "5" THEN F = F * 2 : GOTO 2230
2220   IF O$ = "6" THEN F = F * 4 : GOTO 2230
2230   F(I) = F
2240   FH = F(I) / 256
2250   FL = F(I) - 256 * FH
2260   POKE S + 7 * I, FL
2270   POKE S + 7 * I + 1, FH
2280   POKE S + 7 * I + 4, W + 1
2290 NEXT
2300 T = TI
2310 IF TI - T < 2 * D THEN 2310
2320 GOTO 2020

3010 FOR I = 0 TO 2
3020   POKE S + 4 + 7 * I, W
3030 NEXT
3040 PRINT CHR$(147)
3050 PRINT "xmas 2025"
3060 PRINT
3070 PRINT "laura and fabio wish you"
3080 PRINT "happy winter holidays"
3090 PRINT
3100 PRINT "sleigh ride"
3110 PRINT "by leroy anderson and mitchell parish"

8010 DATA 4291, 4547, 4817, 5103, 5407, 5728, 6069, 6430, 6812, 7217, 7647, 8101

9011 DATA  4, "   ", "   ", "   "
9012 DATA  4, "   ", "   ", "   "
9013 DATA  4, "   ", "   ", "d 5"
9014 DATA  4, "   ", "   ", "-  "
9015 DATA  4, "   ", "   ", "d 5"
9016 DATA  4, "   ", "   ", "-  "
9017 DATA  4, "   ", "   ", "d 5"
9018 DATA  4, "   ", "   ", "-  "

9021 DATA  4, "g 3", "   ", "d 5"
9022 DATA  4, "   ", "   ", "   "
9023 DATA  4, "   ", "   ", "e 5"
9024 DATA  4, "   ", "   ", "   "
9025 DATA  4, "e 3", "   ", "d 5"
9026 DATA  4, "   ", "   ", "b 4"
9027 DATA  4, "   ", "   ", "g 4"
9028 DATA  4, "   ", "   ", "   "

9031 DATA  4, "a 3", "   ", "a 4"
9032 DATA  4, "   ", "   ", "   "
9033 DATA  4, "   ", "   ", "b 4"
9034 DATA  4, "   ", "   ", "   "
9035 DATA  4, "d 3", "   ", "a 4"
9036 DATA  4, "   ", "   ", "f#4"
9037 DATA  4, "   ", "   ", "e 4"
9038 DATA  4, "   ", "   ", "   "

9041 DATA  4, "g 3", "   ", "d 4"
9042 DATA  4, "   ", "   ", "   "
9043 DATA  4, "   ", "   ", "   "
9044 DATA  4, "   ", "   ", "   "
9045 DATA  4, "e 3", "   ", "   "
9046 DATA  4, "   ", "   ", "   "
9047 DATA  4, "   ", "   ", "   "
9048 DATA  4, "   ", "   ", "   "

9051 DATA  4, "a 3", "   ", "   "
9052 DATA  4, "   ", "   ", "   "
9053 DATA  4, "   ", "   ", "e 4"
9054 DATA  4, "   ", "   ", "   "
9055 DATA  4, "d 3", "   ", "f#4"
9056 DATA  4, "   ", "   ", "   "
9057 DATA  4, "   ", "   ", "a 4"
9058 DATA  4, "   ", "   ", "   "

9061 DATA  4, "g 3", "   ", "d 5"
9062 DATA  4, "   ", "   ", "   "
9063 DATA  4, "   ", "   ", "e 5"
9064 DATA  4, "   ", "   ", "   "
9065 DATA  4, "e 3", "   ", "d 5"
9066 DATA  4, "   ", "   ", "b 4"
9067 DATA  4, "   ", "   ", "g 4"
9068 DATA  4, "   ", "   ", "   "

9071 DATA  4, "a 3", "   ", "a 4"
9072 DATA  4, "   ", "   ", "   "
9073 DATA  4, "   ", "   ", "b 4"
9074 DATA  4, "   ", "   ", "   "
9075 DATA  4, "d 3", "   ", "a 4"
9076 DATA  4, "   ", "   ", "f#4"
9077 DATA  4, "   ", "   ", "e 4"
9078 DATA  4, "   ", "   ", "   "

9081 DATA  4, "g 3", "   ", "d 4"
9082 DATA  4, "   ", "   ", "   "
9083 DATA  4, "   ", "   ", "   "
9084 DATA  4, "   ", "   ", "   "
9085 DATA  4, "e 3", "   ", "   "
9086 DATA  4, "   ", "   ", "   "
9087 DATA  4, "   ", "   ", "   "
9088 DATA  4, "   ", "   ", "   "

9091 DATA  4, "a 3", "   ", "   "
9092 DATA  4, "   ", "   ", "   "
9093 DATA  4, "   ", "   ", "e 4"
9094 DATA  4, "   ", "   ", "   "
9095 DATA  4, "d 3", "   ", "f#4"
9096 DATA  4, "   ", "   ", "   "
9097 DATA  4, "   ", "   ", "a 4"
9098 DATA  4, "   ", "   ", "   "

9999 DATA  0, "   ", "   ", "   "


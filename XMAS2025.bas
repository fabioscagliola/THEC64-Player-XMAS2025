1010 S = 54272 : PRINT CHR$(147)
1020 FOR I = 0 TO 24
1030   POKE S + I, 0 : PRINT
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
2030 REM PRINT N$(0), N$(1), N$(2)
2040 IF D = 0 THEN GOTO 3010
2050 FOR I = 1 TO 2
2060   IF N$(I) = "   " THEN F = F(I) : GOTO 2230
2070   N$ = LEFT$(N$(I), 1)
2080   IF N$ = "-" THEN F = 0 : GOTO 2230
2090   IF N$ = "C" THEN FI = 0
2100   IF N$ = "D" THEN FI = 2
2110   IF N$ = "E" THEN FI = 4
2120   IF N$ = "F" THEN FI = 5
2130   IF N$ = "G" THEN FI = 7
2140   IF N$ = "A" THEN FI = 9
2150   IF N$ = "B" THEN FI = 11
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
3050 PRINT "XMAS 2025"
3060 PRINT
3070 PRINT "LAURA AND FABIO WISH YOU"
3080 PRINT "HAPPY WINTER HOLIDAYS"
3090 PRINT
3100 PRINT "SLEIGH RIDE"
3110 PRINT "BY LEROY ANDERSON AND MITCHELL PARISH"

8010 DATA 4291, 4547, 4817, 5103, 5407, 5728, 6069, 6430, 6812, 7217, 7647, 8101

9011 rem DATA  4, "   ", "   ", "   "
9012 rem DATA  4, "   ", "   ", "   "
9013 rem DATA  4, "   ", "   ", "D 5"
9014 rem DATA  4, "   ", "   ", "-  "
9015 rem DATA  4, "   ", "   ", "D 5"
9016 rem DATA  4, "   ", "   ", "-  "
9017 rem DATA  4, "   ", "   ", "D 5"
9018 rem DATA  4, "   ", "   ", "-  "
rem 
9021 rem DATA  4, "   ", "G 3", "D 5"
9022 rem DATA  4, "   ", "   ", "   "
9023 rem DATA  4, "   ", "   ", "E 5"
9024 rem DATA  4, "   ", "   ", "   "
9025 rem DATA  4, "   ", "E 3", "D 5"
9026 rem DATA  4, "   ", "   ", "B 4"
9027 rem DATA  4, "   ", "   ", "G 4"
9028 rem DATA  4, "   ", "   ", "   "
rem 
9031 rem DATA  4, "   ", "A 3", "A 4"
9032 rem DATA  4, "   ", "   ", "   "
9033 rem DATA  4, "   ", "   ", "B 4"
9034 rem DATA  4, "   ", "   ", "   "
9035 rem DATA  4, "   ", "D 3", "A 4"
9036 rem DATA  4, "   ", "   ", "F#4"
9037 rem DATA  4, "   ", "   ", "E 4"
9038 rem DATA  4, "   ", "   ", "   "
rem 
9041 rem DATA  4, "   ", "G 3", "D 4"
9042 rem DATA  4, "   ", "   ", "   "
9043 rem DATA  4, "   ", "   ", "   "
9044 rem DATA  4, "   ", "   ", "   "
9045 rem DATA  4, "   ", "E 3", "   "
9046 rem DATA  4, "   ", "   ", "   "
9047 rem DATA  4, "   ", "   ", "   "
9048 rem DATA  4, "   ", "   ", "   "
rem 
9051 rem DATA  4, "   ", "A 3", "   "
9052 rem DATA  4, "   ", "   ", "   "
9053 rem DATA  4, "   ", "   ", "E 4"
9054 rem DATA  4, "   ", "   ", "   "
9055 rem DATA  4, "   ", "D 3", "F#4"
9056 rem DATA  4, "   ", "   ", "   "
9057 rem DATA  4, "   ", "   ", "A 4"
9058 rem DATA  4, "   ", "   ", "   "
rem 
9061 rem DATA  4, "   ", "G 3", "D 5"
9062 rem DATA  4, "   ", "   ", "   "
9063 rem DATA  4, "   ", "   ", "E 5"
9064 rem DATA  4, "   ", "   ", "   "
9065 rem DATA  4, "   ", "E 3", "D 5"
9066 rem DATA  4, "   ", "   ", "B 4"
9067 rem DATA  4, "   ", "   ", "A 4"
9068 rem DATA  4, "   ", "   ", "G 4"
rem 
9071 rem DATA  4, "   ", "A 3", "A 4"
9072 rem DATA  4, "   ", "   ", "-  "
9073 rem DATA  4, "   ", "   ", "A 4"
9074 rem DATA  4, "   ", "   ", "B 4"
9075 rem DATA  4, "   ", "D 3", "A 4"
9076 rem DATA  4, "   ", "   ", "G 4"
9077 rem DATA  4, "   ", "   ", "E 4"
9078 rem DATA  4, "   ", "   ", "   "
rem 
9081 rem DATA  4, "   ", "G 3", "G 4"
9082 rem DATA  4, "   ", "   ", "   "
9083 rem DATA  4, "   ", "A 2", "   "
9084 rem DATA  4, "   ", "B 2", "   "
9085 rem DATA  4, "   ", "C 3", "   "
9086 rem DATA  4, "   ", "D 3", "   "
9087 rem DATA  4, "   ", "E 3", "   "
9088 rem DATA  4, "   ", "F#3", "   "

9091 DATA  4, "   ", "G 3", "   "
9092 DATA  4, "   ", "   ", "   "
9093 DATA  4, "   ", "-  ", "-  "
9094 DATA  4, "   ", "   ", "   "
9095 DATA  4, "   ", "   ", "   "
9096 DATA  4, "   ", "   ", "   "
9097 DATA  4, "   ", "   ", "D#4"
9098 DATA  4, "   ", "   ", "E 4"

9101 DATA  4, "   ", "C#3", "B 4"
9102 DATA  4, "   ", "   ", "   "
9103 DATA  4, "   ", "   ", "D#4"
9104 DATA  4, "   ", "   ", "E 4"
9105 DATA  4, "   ", "   ", "B 4"
9106 DATA  4, "   ", "   ", "   "
9107 DATA  4, "   ", "   ", "D#4"
9108 DATA  4, "   ", "-  ", "E 4"

9111 DATA  4, "   ", "C#3", "B 4"
9112 DATA  4, "   ", "   ", "   "
9113 DATA  4, "   ", "   ", "C#5"
9114 DATA  4, "   ", "   ", "   "
9115 DATA  4, "   ", "F#3", "A#4"
9116 DATA  4, "   ", "   ", "   "
9117 DATA  4, "   ", "   ", "   "
9118 DATA  4, "   ", "   ", "   "

9121 DATA  4, "   ", "B 3", "-  "
9122 DATA  4, "   ", "   ", "   "
9123 DATA  4, "   ", "   ", "B 4"
9124 DATA  4, "   ", "   ", "   "
9125 DATA  4, "   ", "F#3", "A#4"
9126 DATA  4, "   ", "   ", "F#4"
9127 DATA  4, "   ", "   ", "D#4"
9128 DATA  4, "   ", "   ", "   "

9131 DATA  4, "   ", "B 3", "G#4"
9132 DATA  4, "   ", "   ", "   "
9133 DATA  4, "   ", "   ", "   "
9134 DATA  4, "   ", "   ", "   "
9135 DATA  4, "   ", "F#3", "   "
9136 DATA  4, "   ", "   ", "   "
9137 DATA  4, "   ", "   ", "   "
9138 DATA  4, "   ", "   ", "   "

9141 DATA  4, "   ", "C#3", "-  "
9142 DATA  4, "   ", "   ", "   "
9143 DATA  4, "   ", "   ", "A#4"
9144 DATA  4, "   ", "   ", "   "
9145 DATA  4, "   ", "F#3", "G#4"
9146 DATA  4, "   ", "   ", "E 4"
9147 DATA  4, "   ", "   ", "C#4"
9148 DATA  4, "   ", "   ", "   "

9151 DATA  4, "   ", "C#3", "G#4"
9152 DATA  4, "   ", "   ", "   "
9153 DATA  4, "   ", "   ", "B 4"
9154 DATA  4, "   ", "   ", "   "
9155 DATA  4, "   ", "F#3", "A#4"
9156 DATA  4, "   ", "   ", "   "
9157 DATA  4, "   ", "   ", "C#5"
9158 DATA  4, "   ", "   ", "   "

9161 DATA  4, "   ", "B 3", "F#4"
9162 DATA  4, "   ", "   ", "   "
9163 DATA  4, "   ", "C 4", "   "
9164 DATA  4, "   ", "   ", "   "
9165 DATA  4, "   ", "B 3", "   "
9166 DATA  4, "   ", "   ", "   "
9167 DATA  4, "   ", "   ", "   "
9168 DATA  4, "   ", "-  ", "   "

9171 DATA  4, "   ", "B 3", "   "
9172 DATA  4, "   ", "   ", "   "
9173 DATA  4, "   ", "C 4", "   "
9174 DATA  4, "   ", "   ", "   "
9175 DATA  4, "   ", "B 3", "   "
9176 DATA  4, "   ", "   ", "   "
9177 DATA  4, "   ", "   ", "C#4"
9178 DATA  4, "   ", "   ", "D 4"

9999 DATA  0, "   ", "   ", "   "


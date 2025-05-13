01:                 DIM A(22,22),B(22,22)
02:                 INPUT "ENTER INITIAL NUMBER OF ITERATIONS" ;L
03:                 PRINT "ENTER INITIAL COORDINATES; 0,0 TO END"
04:                 
05:       10        INPUT X,Y
06:                 IF X + Y = 0 THEN GOTO 20
07:                 IF (X<1)or(X>20)or(Y<1)or(Y>20) THEN PRINT"ERROR RE-ENTER": GOTO 10:rem bugfix
08:                 X=X+1: Y=Y+1
09:                 A(X,Y)=A(X,Y)+10
10:                 FOR XW=X-1 TO X + 1: FOR YW=Y-1 TO Y+1
11:                 A(XW,YW) = A(XW,YW)+1
12:                 NEXT YW: NEXT XW
13:                 GOTO 10
14:                 
15:       20        L$="+-------------------------------------+"
16:                 INPUT "PAPER SIZE IN LINES/PAGE" ;P
17:                 FOR I=1 TO L STEP 2
18:                 
19:                 PRINT L$
20:                 FOR Y=1 TO 22: PRINT ":";: FOR X=1 TO 22
21:                 IF A(X,Y)<10 THEN PRINT "  "; ELSE PRINT "[]";
22:                 B(X,Y)=0
23:                 NEXT X: PRINT ":": NEXT Y
24:                 PRINT L$
25:                 for j=25 to p: print: NEXT J
26:                 
27:                 FOR X=2 TO 21: FOR Y=2 TO 21
28:                 AW=A(X,Y)
29:                 IF (AW<>3)AND(AW<>13)AND(AW<>14) THEN GOTO 30
30:                 B(X,Y)=B(X,Y)+10
3i:                 FOR XW=X-1 TO X+1 : FOR YW=Y-1 TO Y+1
32:                 B(XW,YW)=B(XW,YW)+1
33:                 NEXT YW: NEXT XW
34:       30        NEXT Y: NEXT X
35:                 
36:                 PRINT L$
37:                 FOR Y=1 TO 22: PRINT ":";: FOR X=1 TO 22
38:                 IF B(X,Y)<10 THEN PRINT "  "; ELSE PRINT "[]";
39:                 A(X,Y)=0
40:                 NEXT X: PRINT ":" : NEXT Y
41:                 PRINT L$
42:                 FOR J=25 TO P: PRINT: NEXT J
43:                 
44:                 FOR X=2 TO 21:FOR Y=2 TO 21
45:                 BW=B(X,Y)
46:                 IF (BW<>3)AND(BW<>13)AND(BW<>14) THEN GOTO 40
47:                 A(X,Y)=A(X,Y)+10
48:                 FOR XW=X-1 TO X+1: FOR YW=Y-1 TO Y+1
49:                 A(XW,YW)=A(XW,YW)+1
50:                 NEXT YW: NEXT XW
51:       40        NEXT y: NEXT X
52:                 NEXT I
53:                 
54:                 INPUT "ENTER NUMBER OF ADDITIONAL ITERATIONS";l
55:                 IF l>0 THEN GOTO 20
56:                 STOP
57:                 END
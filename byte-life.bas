1001 dim a(19,19),b(19,19)
1002 input "enter initial number of iterations";l
1003 print "enter initial coordinates; 0,0 to end"
1004 rem
1005 input x,y
1006 if x + y = 0 then goto 1015
1007 if (x<1)or(x>20)or(y<1)or(y>20) then print"error re-enter": goto 1005:rem bugfix
1008 x=x+1: y=y+1
1009 a(x,y)=a(x,y)+10
1010 for xw=x-1 to x + 1: for yw=y-1 to y+1
1011 a(xw,yw) = a(xw,yw)+1
1012 next yw: next xw
1013 goto 1005
1014 rem
1015 l$="+-------------------------------------+"
1016 input "paper size in lines/page   25{left}{left}{left}{left}";p
1017 for i=1 to l step 2
1018 rem
1019 print l$
1020 for y=1 to 19: print ":";: for x=1 to 19
1021 if a(x,y)<10 then print "  ";: goto 1023
1022 print "[]";
1023 b(x,y)=0
1024 next x: print : next y
1025 print l$
1026 for j=25 to p: print: next j
1027 for x=2 to 18: for y=2 to 18
1028 aw=a(x,y)
1029 if (aw<>3)and(aw<>13)and(aw<>14) then goto 1034
1030 b(x,y)=b(x,y)+10
1031 for xw=x-1 to x+1 : for yw=y-1 to y+1
1032 b(xw,yw)=b(xw,yw)+1
1033 next yw: next xw
1034 next y: next x
1035 rem
1036 print l$
1037 for y=1 to 19: print ":";: for x=1 to 19
1038 if b(x,y)<10 then print "  ";: goto 1040
1039 print "[]";
1040 a(x,y)=0
1041 next x: print  : next y
1042 print l$
1043 for j=25 to p: print: next j
1044 for x=2 to 18:for y=2 to 18
1045 bw=b(x,y)
1046 if (bw<>3)and(bw<>13)and(bw<>14) then goto 1051
1047 a(x,y)=a(x,y)+10
1048 for xw=x-1 to x+1: for yw=y-1 to y+1
1049 a(xw,yw)=a(xw,yw)+1
1050 next yw: next xw
1051 next y: next x
1052 next i
1053 rem
1054 input "enter number of additional iterations";l
1055 if l>0 then goto 1015
1056 stop
1057 end
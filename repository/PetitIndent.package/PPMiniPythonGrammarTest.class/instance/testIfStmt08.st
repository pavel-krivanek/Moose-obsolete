test-grammar
testIfStmt08

self fail: 
'if x:
   print x
   if x :
      print 2
  else :
      print 3
else :
   print 1
' rule: #ifStmt.
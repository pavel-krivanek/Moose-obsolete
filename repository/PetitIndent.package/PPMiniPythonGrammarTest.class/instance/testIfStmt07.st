test-grammar
testIfStmt07

self fail: 
'if x < y :
   print x
   if x :
      print 2
    else :
      print 3
else :
   print 1
' rule: #ifStmt.
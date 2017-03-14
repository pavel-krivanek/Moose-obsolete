test-grammar
testIfStmt11

self parse: 
'if x:
   print x
elif z :
	print z
elif  grant_type == "https://oauth.reddit.com/grants/installed_client":
	print z
else :
      print 3
' rule: #ifStmt.

	self assert: result size = 10.
	self assert: result first = 'if:'.

	self assert: result second size = 1.
	self assert: result second first allSatisfy: [ :e | e = #print ].

	self assert: result third = 'if:'.

	self assert: result fourth size = 1.
	self assert: result fourth allSatisfy: [ :e | e = #print ].


	self assert: result fifth = 'if:'.

	self assert: result sixth size = 1.
	self assert: result sixth allSatisfy: [ :e | e = #print ].

	self assert: result seventh size = 1.
	self assert: result seventh allSatisfy: [ :e | e = #print ].

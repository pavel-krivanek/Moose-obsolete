test-grammar
testIfStmt12

self parse: 
'if bytes is str:  # py2
   print a
   curl.setopt(pycurl.WRITEFUNCTION, write_function)
else:  # py3
   # ported pycurl package, but in the meantime this lambda will
   # make it work for downloading (utf8) text.
   curl.setopt(pycurl.WRITEFUNCTION, lambda s: write_function(utf8(s)))
' rule: #ifStmt.


	self assert: result size = 4.
	self assert: result first = 'if:'.

	self assert: result second size = 2.
	self assert: result second allSatisfy: [ :e | e = #print ].
	self assert: result third size = 3.	
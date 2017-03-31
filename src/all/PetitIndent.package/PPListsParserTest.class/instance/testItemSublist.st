as yet unclassified
testItemSublist

      string := 
'1) abc
   1.1) def
'.
	
	self parse: string rule: #item.
	self assert: result first = 'abc'.
	self assert: result second isCollection.
	self assert: result second size = 1.
	self assert: result second first first = 'def'.
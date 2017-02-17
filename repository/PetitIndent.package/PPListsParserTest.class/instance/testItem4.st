as yet unclassified
testItem4
	| source |
	
	"Its hard to se, but abc and def starts at the same column!"
	source := 
'2) abc
   def'.

	self parse: source rule: #item.
	self assert: result first = 'abc'.
	self assert: result second = 'def'.
	
	source := 
'2) abc
   def
   ghi'.

	self parse: source rule: #item.
	self assert: result first = 'abc'.
	self assert: result second =  'def'.
	self assert: result third =  'ghi'.
	
	source := 
'2) abc
  def'.

	self fail: source rule: #item.
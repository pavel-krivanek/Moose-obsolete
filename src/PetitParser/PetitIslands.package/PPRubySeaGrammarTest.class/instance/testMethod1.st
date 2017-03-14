as yet unclassified
testMethod1
	self parse: 'def bar end' 
	rule: #methodDef.

	self assert: result size = 1.
	self assert: result first = '.bar'.

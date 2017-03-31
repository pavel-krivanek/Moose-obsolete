test-grammar
testClass02

self parse: 
'class SubredditExists(Exception): pass' rule: #classDef.

	self assert: result size = 4.
	self assert: result first = 'class:'.
	self assert: result second = 'SubredditExists'.
	self assert: result third size = 0.
	
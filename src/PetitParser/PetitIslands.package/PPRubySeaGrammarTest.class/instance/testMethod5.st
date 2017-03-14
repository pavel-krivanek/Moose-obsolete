as yet unclassified
testMethod5
	self parse: 'def bar=(val)
end' rule: #methodDef.
	
	self assert: result size = 1.
	self assert: result first = '.bar='.

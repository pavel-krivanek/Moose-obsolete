as yet unclassified
testMethod2
	self parse: 'def self.bar 
		1+1
	end' rule: #methodDef.

	self assert: result size = 1.
	self assert: result first = '.self.bar'.

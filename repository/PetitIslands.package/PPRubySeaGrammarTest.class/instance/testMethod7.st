as yet unclassified
testMethod7
	self parse: 'def self.[] end' rule: #methodDef.
	
	self assert: result size = 1.
	self assert: result first = '.self.[]'.

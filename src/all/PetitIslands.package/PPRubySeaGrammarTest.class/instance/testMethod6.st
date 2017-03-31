as yet unclassified
testMethod6
	self parse: 'def self.bar end' rule: #methodDef.
	
	self assert: result size = 1.
	self assert: result first = '.self.bar'.

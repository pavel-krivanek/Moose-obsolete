as yet unclassified
testValueDefinition
	self parse: 'a = 123' rule: #valueDefinition.
	self parse: 'abc = 1' rule: #valueDefinition.	
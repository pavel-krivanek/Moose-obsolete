as yet unclassified
testClass
	self parse: 
'class Foo 
end' rule: #classDef.
	
	self assert: result size = 0.
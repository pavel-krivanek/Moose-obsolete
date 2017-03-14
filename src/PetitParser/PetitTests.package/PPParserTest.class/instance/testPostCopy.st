testing-properties
testPostCopy
	| parser copy |
	parser := PPParser new.
	parser propertyAt: #foo put: true.
	copy := parser copy.
	copy propertyAt: #foo put: false.
	self assert: (parser propertyAt: #foo).
	self deny: (copy propertyAt: #foo)
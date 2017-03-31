tests
testProperty
	| entity |
	entity := MooseEntity new.
	self assert: entity properties isEmpty.
	self assert: (entity propertyNamed: #aKey ifNil: [ 10 ]) equals: 10.
	entity propertyNamed: #aKey ifAbsentPut: 20.
	self assert: (entity propertyNamed: #aKey ifNil: [ 10 ]) equals: 20.
	self deny: entity properties isEmpty.
	self assert: entity complexPropertyPragmas isEmpty.
	self assert: entity notExistentMetricValue equals: -1
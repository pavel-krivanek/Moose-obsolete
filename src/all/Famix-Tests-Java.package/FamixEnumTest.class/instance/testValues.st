tests
testValues
	| enum value |
	enum := FAMIXEnum new.
	value := FAMIXEnumValue new.
	enum values: (OrderedCollection with: value).
	self assert: enum values size equals: 1.
	self assert: value parentEnum equals: enum
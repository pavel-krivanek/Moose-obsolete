tests
testAtIfAbsentIfPresent
	| group result |
	group := MooseGroup new.
	group add: (FAMIXClass new name: 'A').
	result := group entityNamed: 'X' ifAbsent: [ 42 ] ifPresent: [ :i |  ].
	self assert: result equals: 42.
	result := group entityNamed: 'A' ifAbsent: [ nil ] ifPresent: [ :cls | cls name ].
	self assert: result equals: 'A'
tests
testMooseIncludes
	| t |
	t := MooseEntity new.
	self assert: (t mooseIncludes: t).
	self deny: (t mooseIncludes: MooseEntity new).
running
testDefaultClass
	| gen |
	gen := FMDefaultCodeGenerator new.
	gen defaultSuperclass name should = #Object.
	gen defaultSuperclass: LIBRoot.
	gen defaultSuperclass name should = #LIBRoot
running
testClassNamePrefix
	| gen |
	gen := FMDefaultCodeGenerator new.
	gen classNamePrefix should = ''.
	gen classNamePrefix: 'Zork'.
	gen classNamePrefix should = 'Zork'
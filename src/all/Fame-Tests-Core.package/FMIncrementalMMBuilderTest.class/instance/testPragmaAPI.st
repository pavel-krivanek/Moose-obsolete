tests
testPragmaAPI

	| mmodel compoundDesc argsProp numProp |
	builder pragmaClass: EQExpression.
	builder pragmaClass: EQOperator.
	builder pragmaProperty: #op in: EQCompound.
	builder pragmaProperty: #args in: EQCompound.
	builder pragmaProperty: #number in: EQNumerical.
	mmodel := builder metamodel.

	mmodel size should = 9.
	(mmodel elementNamed: 'EQ') isFM3Package should beTrue.
	(mmodel elements select: #isFM3Class) size should = 5.
	(mmodel elements select: #isFM3Property) size should = 3.

	numProp := (mmodel elementNamed: 'EQ.Numerical.number').
	numProp type should = FM3MetaDescription number.
	numProp implementingSelector should = #number.
	numProp mmClass should = (mmodel elementNamed: 'EQ.Numerical').
	numProp isMultivalued should beFalse.
	
	compoundDesc := (mmodel elements select: [ :e | e name = #Compound ]).
	compoundDesc size should = 1.
	compoundDesc := compoundDesc anyOne.
	compoundDesc package should = (mmodel elementNamed: 'EQ').
	compoundDesc attributes size should = 2.
	compoundDesc implementingClass should = EQCompound.
	
	compoundDesc attributes detect: [ :a | a name = #op ] ifNone: [ self fail ].
	compoundDesc attributes detect: [ :a | a name = #args ] ifNone: [ self fail ].
	
	argsProp := mmodel elementNamed: 'EQ.Compound.args'.
	argsProp type should = (mmodel elementNamed: 'EQ.Expression').
	argsProp implementingSelector should = #args.
	argsProp hasOpposite should beFalse.
	argsProp mmClass should = compoundDesc.
	argsProp isMultivalued should beTrue.
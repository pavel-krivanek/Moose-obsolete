tests
testPragmaAPIInheritanceChain

	| mmodel compoundDesc argsProp numProp numericalMeta expressionMeta simpleMeta |
	builder pragmaClass: EQExpression.
	builder pragmaClass: EQOperator.
	builder pragmaProperty: #op in: EQCompound.
	builder pragmaProperty: #args in: EQCompound.
	builder pragmaProperty: #number in: EQNumerical.
	mmodel := builder metamodel.

	(mmodel elements select: #isFM3Class) size should = 5.

	expressionMeta := (mmodel elementNamed: 'EQ.Expression').
	simpleMeta := (mmodel elementNamed: 'EQ.Simple').
	
	(mmodel elementNamed: 'EQ.Numerical') superclass should = simpleMeta.
	simpleMeta superclass should = expressionMeta.
	(mmodel elementNamed: 'EQ.Compound') superclass should = expressionMeta.
	expressionMeta superclass should = FM3MetaDescription object.

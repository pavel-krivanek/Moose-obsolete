public-entity-creation
ensureImplicitVariable: name inFamixMethod: aFAMIXMethod
	
	"^ others detect: [:aFamixEntity |
		aFamixEntity mooseName = (aFAMIXMethod mooseName,'.',name) asSymbol
		] ifNone: [
			self createSpecialVariable: name forFamixMethod: aFAMIXMethod
		]."
	
	"I'm not sure using a dictionary of dictionaries is the best solution, But it is at least really better than the first solution above"
	^ (implicitVariables at: aFAMIXMethod ifAbsentPut: [Dictionary new])
		at: name ifAbsentPut: [self createSpecialVariable: name forFamixMethod: aFAMIXMethod].
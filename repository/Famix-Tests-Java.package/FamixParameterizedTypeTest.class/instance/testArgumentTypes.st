tests
testArgumentTypes
	| fmxEntity fmxMethod declaredType typeB typeC parameterizedTypeA parameterizedTypeB parameterizableClassA |
	parameterizedTypeB := model allParameterizedTypes entityNamed: #'ParameterizableClassA<TypeB,TypeC>'.
	parameterizedTypeA := model allParameterizedTypes entityNamed: #'ParameterizableClassA<TypeB>'.
	parameterizableClassA := (model entities select: [ :each | each name = 'ParameterizableClassA' ]) at: 1.
	typeB := (model entities select: [ :each | each name = 'TypeB' ]) at: 1.
	typeC := (model entities select: [ :each | each name = 'TypeC' ]) at: 1.
	fmxEntity := model allAttributes entityNamed: #'ClassA.attributeA1'.
	declaredType := fmxEntity declaredType.
	self assert: declaredType equals: parameterizedTypeA.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 1.
	self assert: (declaredType arguments at: 1) equals: typeB.
	fmxEntity := model allAttributes entityNamed: #'ClassA.attributeA2'.
	declaredType := fmxEntity declaredType.
	self assert: declaredType equals: parameterizedTypeB.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 2.
	self assert: (declaredType arguments at: 1) equals: typeB.
	self assert: (declaredType arguments at: 2) equals: typeC.
	fmxMethod := (model allMethods select: [ :each | each name = 'methodA1' ]) at: 1.
	declaredType := fmxMethod declaredType.
	self assert: declaredType equals: parameterizedTypeA.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 1.
	self assert: (declaredType arguments at: 1) equals: typeB.
	fmxEntity := (fmxMethod parameters select: [ :each | each name = 'parameterMtdA1' ]) at: 1.
	declaredType := fmxEntity declaredType.
	self assert: declaredType equals: parameterizedTypeA.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 1.
	self assert: (declaredType arguments at: 1) equals: typeB.
	fmxEntity := (fmxMethod localVariables select: [ :each | each name = 'localVariableMtdA1' ]) at: 1.
	declaredType := fmxEntity declaredType.
	self assert: declaredType equals: parameterizedTypeA.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 1.
	self assert: (declaredType arguments at: 1) equals: typeB.
	fmxMethod := (model allMethods select: [ :each | each name = 'methodA2' ]) at: 1.
	declaredType := fmxMethod declaredType.
	self assert: declaredType equals: parameterizedTypeB.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 2.
	self assert: (declaredType arguments at: 1) equals: typeB.
	self assert: (declaredType arguments at: 2) equals: typeC.
	fmxEntity := (fmxMethod parameters select: [ :each | each name = 'parameterMtdA2' ]) at: 1.
	declaredType := fmxEntity declaredType.
	self assert: declaredType equals: parameterizedTypeB.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 2.
	self assert: (declaredType arguments at: 1) equals: typeB.
	self assert: (declaredType arguments at: 2) equals: typeC.
	fmxEntity := (fmxMethod localVariables select: [ :each | each name = 'localVariableMtdA2' ]) at: 1.
	declaredType := fmxEntity declaredType.
	self assert: declaredType equals: parameterizedTypeB.
	self assert: declaredType parameterizableClass equals: parameterizableClassA.
	self assert: declaredType arguments size equals: 2.
	self assert: (declaredType arguments at: 1) equals: typeB.
	self assert: (declaredType arguments at: 2) equals: typeC
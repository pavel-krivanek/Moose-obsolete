tests
setUp
	MooseModel resetMeta.
	model := MooseModel new.
	
	model importFromMSEStream: '(
		(FAMIX.Namespace (id: 1) (name ''NamespaceA''))
		(FAMIX.Class (id: 2) (name ''ClassA''))
		
		(FAMIX.ParameterizableClass (id: 3) (name ''ParameterizableClassA''))
		(FAMIX.ParameterType (id: 5) (name ''A'') (container (ref: 3)))
		(FAMIX.ParameterType (id: 6) (name ''B'') (container (ref: 3)))
		(FAMIX.ParameterType (id: 7) (name ''C'') (container (ref: 3)))
		
		(FAMIX.Type (id: 4) (name ''TypeB''))
		(FAMIX.Type (id: 5) (name ''TypeC''))		
		(FAMIX.ParameterizedType (id: 6) (parameterizableClass (ref: 3)) (arguments (ref: 4)))
		(FAMIX.ParameterizedType (id: 7) (parameterizableClass (ref: 3)) (arguments (ref: 4) (ref: 5)))
		
		(FAMIX.Attribute (id: 8) (name ''attributeA1'') (parentType (ref: 2)) (declaredType (ref: 6)))
		(FAMIX.Attribute (id: 9) (name ''attributeA2'') (parentType (ref: 2)) (declaredType (ref: 7)))

		(FAMIX.Method (id: 10) (name ''methodA1'') (parentType (ref: 2)) (declaredType (ref: 6)))
		(FAMIX.Method (id: 11) (name ''methodA2'') (parentType (ref: 2)) (declaredType (ref: 7)))
		
		(FAMIX.Parameter (id: 12) (name ''parameterMtdA1'') (parentBehaviouralEntity (ref: 10)) (declaredType (ref: 6)))
		(FAMIX.Parameter (id: 13) (name ''parameterMtdA2'') (parentBehaviouralEntity (ref: 11)) (declaredType (ref: 7)))
		
		(FAMIX.LocalVariable (id: 14) (name ''localVariableMtdA1'') (parentBehaviouralEntity (ref: 10)) (declaredType (ref: 6)))
		(FAMIX.LocalVariable (id: 15) (name ''localVariableMtdA2'') (parentBehaviouralEntity (ref: 11)) (declaredType (ref: 7)))
	)' readStream
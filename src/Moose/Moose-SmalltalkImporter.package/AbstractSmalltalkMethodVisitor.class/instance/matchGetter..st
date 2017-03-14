method-classifying
matchGetter: aMethodNode 
	 
	| return attribute | 
	aMethodNode arguments isEmpty 
		ifTrue: 
			[aMethodNode body isSequence 
				ifTrue: 
					[aMethodNode body statements size = 1 
						ifTrue: 
							[return := aMethodNode body statements first. 
							return isReturn 
								ifTrue: 
									[return value isVariable 
										ifTrue: 
											[attribute := methodScope 
												resolve: return value name 
												ifAbsent: nil. 
											attribute notNil 
												ifTrue: 
													[attribute class = FAMIXAttribute ifTrue: [famixMethod kind: #getter]]]]]]]
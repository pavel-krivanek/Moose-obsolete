visitor-double dispatching
matchSetter: aMethodNode 
	 
	| assignment attribute | 
	aMethodNode arguments size = 1 
		ifTrue: 
			[aMethodNode body isSequence 
				ifTrue: 
					[aMethodNode body statements size = 1 
						ifTrue: 
							[assignment := aMethodNode body statements first. 
							assignment isReturn ifTrue: [assignment := assignment value]. 
							assignment isAssignment 
								ifTrue: 
									[attribute := methodScope 
										resolve: assignment variable name 
										ifAbsent: nil. 
									attribute notNil 
										ifTrue: 
											[attribute class = FmxStAttribute 
												ifTrue: 
													[assignment value isVariable 
														ifTrue: 
															[assignment value name = aMethodNode arguments first name 
																ifTrue: [famixMethod kind: #setter]]]]]]]]
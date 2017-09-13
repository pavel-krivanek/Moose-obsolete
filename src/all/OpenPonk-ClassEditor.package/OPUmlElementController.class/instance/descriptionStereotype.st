forms
descriptionStereotype
	| profile names |
	profile := OPOntoUMLProfileFactory new createProfile.
	names := profile packagedElements
		select: [ :each | 
			(each oclIsKindOf: #Stereotype)
				and: [ each ownedAttributes
						anySatisfy: [ :attr | attr name = ('base_' , self model umlClassName) ] ] ]
		thenCollect: [ :each | each name -> each name ].
	^ MASingleOptionDescription new
		optionsAndLabels: {nil -> ''} , names;
		accessor:
			(MAPluggableAccessor
				read:
					[ :me | me model appliedStereotypes ifEmpty: [ nil ] ifNotEmpty: [ :col | col first name ] ]
				write: [ :me :newValue | 
					| stereos |
					stereos := me model appliedStereotypes.
					(me model appliedStereotypes noneSatisfy: [ :each | each name = newValue ])
						ifTrue: [ [ me model appliedStereotypes isNotEmpty ]
								whileTrue: [ me model unapplyStereotype: me model appliedStereotypes first ].
							newValue
								ifNotNil: [ self
										applyStereotype: (profile packagedElements detect: [ :each | each name = newValue ])
										to: me model ].
							me refreshFigure.
							me refreshFigure ] ]);
		label: 'Stereotype';
		priority: 4;
		yourself
initialization
propertiesOfModel: aModel
	| props |
	props := OrderedCollection new.
	aModel appliedStereotypes
		do: [ :stereo | 
			stereo ownedAttributes
				do: [ :attr | 
					stereo tags
						at: attr name
						ifPresent: [ :value | 
							value = true
								ifTrue: [ props add: attr name ]
								ifFalse: [ value = false
										ifFalse: [ props add: attr name , '=' , attr value asString ] ] ] ] ].
	^ props
Roassal2 - updating
update
	self hasStereotypes
		ifTrue: [ stereotypeLabel localStyle fontSize: 10 ]
		ifFalse: [ stereotypeLabel localStyle fontSize: 0 ].
	super update
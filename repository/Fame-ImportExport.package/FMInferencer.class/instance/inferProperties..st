inferring
inferProperties: anAbstractElement

	anAbstractElement attributes do: [ :anAbstractAttribute |
		self inferProperty: anAbstractAttribute ]
	
	
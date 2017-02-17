comparing
= anXmlNode
	super = anXmlNode
		ifFalse: [ ^ false ].
	self name = anXmlNode name
		ifFalse: [ ^ false ].
	self attributes size = anXmlNode attributes size
		ifFalse: [ ^ false ].
	self attributes with: anXmlNode attributes do: [ :first :second |
		first = second 
			ifFalse: [ ^ false ] ].
	^ true
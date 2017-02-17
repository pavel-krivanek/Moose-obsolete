comparing
= anXmlNode
	self == anXmlNode
		ifTrue: [ ^ true ].
	self class = anXmlNode class
		ifFalse: [ ^ false ].
	self children size = anXmlNode children size
		ifFalse: [ ^ false ].
	self children with: anXmlNode children do: [ :first :second |
		first = second 
			ifFalse: [ ^ false ] ].
	^ true
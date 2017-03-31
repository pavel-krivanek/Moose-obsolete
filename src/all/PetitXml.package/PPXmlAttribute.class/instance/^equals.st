comparing
= anXmlNode
	self == anXmlNode
		ifTrue: [ ^ true ].
	self class = anXmlNode class
		ifFalse: [ ^ false ].
	^ self name = anXmlNode name
		and: [ self value = anXmlNode value ]
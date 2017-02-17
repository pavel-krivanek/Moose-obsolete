comparing
= anXmlNode
	self == anXmlNode
		ifTrue: [ ^ true ].
	self class = anXmlNode class
		ifFalse: [ ^ false ].
	^ self data = anXmlNode data
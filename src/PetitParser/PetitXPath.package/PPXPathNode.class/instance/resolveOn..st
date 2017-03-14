as yet unclassified
resolveOn: anXmlElement
	| matchingChildren |
	
	matchingChildren := anXmlElement childNodes 
		select: [ :each | each isElement and: [ each name localName = self tag ] ].
	
	matchingChildren ifEmpty: [ ^ nil ].
	^ self filter resolveOn: matchingChildren  
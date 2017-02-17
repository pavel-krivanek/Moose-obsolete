resolving
resolveOn: anArray
	| result | 
	
	result := anArray select: [ :each | | attrValue |
		attrValue := each attributeAt: self name.
		attrValue notNil 
			and: [ (attrValue = self value) or: [ self value = '*' ] ] ].
		
	result ifEmpty: [ ^ nil ].
	result size = 1 ifTrue: [ ^ result first ].
	^ result
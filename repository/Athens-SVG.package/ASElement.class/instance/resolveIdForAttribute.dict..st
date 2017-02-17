internal
resolveIdForAttribute: aName dict: dict
	| value |
	value := self perform: aName.
	value class == ASLink
		ifTrue: [ self attributeAt: aName put: (value resolveIds: dict) ]
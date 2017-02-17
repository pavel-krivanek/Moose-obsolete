instance creation
newElementWithAttributes
	| element |

	element := self newElement.
	self attributeAssociations do: [:each |
		element attributeNodes addLast:
			(self attributeClass
				name: each key
				value: each value)].
	^ element.
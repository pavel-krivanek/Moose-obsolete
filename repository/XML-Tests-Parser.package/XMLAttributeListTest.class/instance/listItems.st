accessing
listItems
	attributes ifNil: [
		attributes :=
			super listItems collect: [:each |
				self attributeClass
					name: each
					value: each]].
	^ attributes copy.
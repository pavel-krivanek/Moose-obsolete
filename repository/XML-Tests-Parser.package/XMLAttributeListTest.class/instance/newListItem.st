accessing
newListItem
	^ newAttribute
		ifNil: [
			newAttribute :=
				self attributeClass
					name: 'newName'
					value: 'newValue']
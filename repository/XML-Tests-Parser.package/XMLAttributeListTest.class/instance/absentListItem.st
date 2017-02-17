accessing
absentListItem
	^ absentAttribute
		ifNil: [
			absentAttribute :=
				self attributeClass
					name: 'absentName'
					value: 'absentValue']
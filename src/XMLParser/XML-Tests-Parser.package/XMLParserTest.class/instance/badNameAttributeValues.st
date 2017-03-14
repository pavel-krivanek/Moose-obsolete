accessing
badNameAttributeValues
	^ self badNames reject: [:badName |
		(badName includes: $<)
			or: [badName anySatisfy: [:each | each isXMLChar not]]]
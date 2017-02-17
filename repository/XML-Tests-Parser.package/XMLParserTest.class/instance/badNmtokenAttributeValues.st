accessing
badNmtokenAttributeValues
	^ self badNmtokens reject: [:badName |
		(badName includes: $<)
			or: [badName anySatisfy: [:each | each isXMLChar not]]]
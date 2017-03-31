adding
addAttribute: anAttribute
	^ attributeSpec
		at: anAttribute
		ifAbsentPut: [nil]
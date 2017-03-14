initialize - property parts
propertyListPart

	^ (DropListPart new)
		list: (self allPropertySelectorsForElementOfType: self groupClass);
		useLatePopulateContents: false;
		defaultValue: 1;
		"callback: [ :outputValue | propertyTextFieldPart textEntryContents: 'element ' , outputValue ];"
		transformed: [ :outputValue | '[:element | element ' , outputValue , ']' ];
		yourself
initialize-release
propertyNamePartWithDefault: aString
	^ (TextFieldPart new)
		inGroupboxNamed: 'Property name';
		useLatePopulateContents: false;
		defaultValue: aString;
		yourself
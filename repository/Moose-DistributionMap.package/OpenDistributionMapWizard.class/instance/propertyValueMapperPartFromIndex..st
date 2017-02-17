initialize-release
propertyValueMapperPartFromIndex: index

	^ (TextFieldPart new)
		inGroupboxNamed: 'Value mapper';
		useLatePopulateContents: false;
		prefix: '[:propVal | ';
		suffix: ' ]';
		defaultValue: [ :requiredInputs | 
					self propertyMapperDefaultTextFromIndex: index ];
		textFieldHorizontalSize: 200;
		yourself
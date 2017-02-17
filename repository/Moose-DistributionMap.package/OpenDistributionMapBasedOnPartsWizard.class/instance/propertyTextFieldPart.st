initialize - property parts
propertyTextFieldPart
	^ propertyTextFieldPart ifNil:  
		[propertyTextFieldPart := (TextFieldPart new)
			prefix: '[:element | ';
			suffix: ' ]';
			returnSuffixAndPrefix: true;
			useLatePopulateContents: false;
			yourself]
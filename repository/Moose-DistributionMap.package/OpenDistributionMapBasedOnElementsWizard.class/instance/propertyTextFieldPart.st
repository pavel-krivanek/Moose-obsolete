initialize - property parts
propertyTextFieldPart

	^TextFieldPart new 
			prefix: '[:element | '; 
			suffix: ']' ;
			useLatePopulateContents: false;  
			returnSuffixAndPrefix: true; 
			defaultValue: ('element ' ,  (self allPropertySelectorsForElementOfType: self groupClass) first);
			transformed: [:outputValue |  outputValue];
			yourself.
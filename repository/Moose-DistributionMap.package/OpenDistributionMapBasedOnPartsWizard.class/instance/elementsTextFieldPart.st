initialize - elements parts
elementsTextFieldPart
	^ (TextFieldPart new)
		prefix: '[:container |  ';
		suffix: ' ]';
		useLatePopulateContents: false;
		returnSuffixAndPrefix: true;
		defaultValue:
				(self possibleElementSelectors isEmpty
					ifTrue: ['']
					ifFalse: ['container ' , (self possibleElementSelectors anyOne name)]);
				
		transformed: [:aString | aString];
		yourself
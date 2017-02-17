initialize - property parts
propertyCompositePart
	
	^(CompositePart new)
		inGroupboxNamed: 'Select propertySelector to use';
		useLatePopulateContents: false;
		withTitlesAndParts:
				{('Using a pre-initialized list' -> self propertyListPart).
					('Entering a block' -> self propertyTextFieldPart)};
		yourself.
	
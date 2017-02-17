initialize - elements parts
elementsCompositePart
	
	^ (CompositePart new)
		inGroupboxNamed: 'Select type of elements';
		useLatePopulateContents: false;
		withTitlesAndParts:
				{('Using a pre-initialized list' -> (self elementsListPart)).
					('Entering a block' -> self elementsTextFieldPart)};
		yourself.	
			
	
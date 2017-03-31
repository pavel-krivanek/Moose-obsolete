initialize - containers parts
containersCompositePart

	^ (CompositePart new)
		inGroupboxNamed: 'Select type of parts';
		useLatePopulateContents: false;
		withTitlesAndParts:
				{('Using pre-initialized list' -> self containersListPart ).
					('Entering a block' -> self containersTextFieldPart )};
		yourself.
accessing - morphs
widgetMorph

	^ widgetMorph ifNil:[ 
	 		self initializeWidgetMorphWithMessage: self wizardPart textEntryMessage.
			widgetMorph  
				]
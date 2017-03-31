accessing - morphs
initializeWidgetMorphWithMessage: aString
 
	 widgetMorph := 
			self newColumnWith:{   
				self newRowWith: { 
					((self newGroupBoxNamed: 'Initial list' translated
						with: self initialListMorph)).
					(self newColumnWith: { 
						(self newRowWith: {   }).
						(self newRowWith: {   }).
						(self newRowWith: {   }).
						(self addButtonMorph).
						(self newRowWith: {   }).
						(self removeButtonMorph)
				 	}).
					(self newColumnWith: { 
						(self 
							newGroupBoxNamed: 'Selection' translated
							with: self selectionListMorph )
				 	})
		 		}.
				self smalltalkExpressionSelectorMorphNamed: aString  .
				}
				
	
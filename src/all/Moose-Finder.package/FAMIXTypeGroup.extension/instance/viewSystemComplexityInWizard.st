*Moose-Finder
viewSystemComplexityInWizard
	<menuItem: 'Customizable System Complexity' category: 'Visualize'>
	self isEmpty ifTrue: [ ^ self ].
	^ MooseCustomizableSystemComplexityBrowser 
					openOnClassGroup: self
					heightToSelect: #numberOfMethods
					widthToSelect: #numberOfAttributes
					colorToSelect: #numberOfLinesOfCode
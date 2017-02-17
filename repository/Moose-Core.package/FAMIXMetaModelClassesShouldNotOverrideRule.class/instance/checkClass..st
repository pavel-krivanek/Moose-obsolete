running
checkClass: aContext
	|class  |
	class := aContext.
	
	(self metaModelClasses includes: class) 
		ifTrue: [
			self selectorsThatShouldNotBeOverriden do: [:each |
				(class includesSelector: each)
					ifTrue: [
						result addClass: class  selector: each
						].
			].
		].
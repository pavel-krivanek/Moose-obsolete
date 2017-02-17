annotations
testAnnotationTypeAttributesInModel
	self model allAnnotationTypes do: [:each | 
		each attributes do: [:attr | 
			self assert: attr mooseModel equals: self model ]]
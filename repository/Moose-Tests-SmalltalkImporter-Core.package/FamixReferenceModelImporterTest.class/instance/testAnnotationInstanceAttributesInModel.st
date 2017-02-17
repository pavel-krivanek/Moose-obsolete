annotations
testAnnotationInstanceAttributesInModel
	self model allAnnotationInstances do: [:each | 
		each attributes do: [:attr | 
			self assert: attr mooseModel equals: self model ]]
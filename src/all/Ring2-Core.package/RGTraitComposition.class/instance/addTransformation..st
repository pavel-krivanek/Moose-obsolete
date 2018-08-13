accessing - backend
addTransformation: anRGTraitTransformation 

	self parent announceDefinitionChangeDuring: [ 
		self backend forBehavior addTransformation: anRGTraitTransformation to: self ].
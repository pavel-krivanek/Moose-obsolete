accessing - backend
removeTransformation: anRGTraitTransformation

	self parent announceDefinitionChangeDuring: [ 
		self backend forBehavior removeTransformation: anRGTraitTransformation from: self ].
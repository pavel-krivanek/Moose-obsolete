private - backend access
pvtAddTransformation: anRGTraitTransformation

	self environment verifyOwnership: anRGTraitTransformation.
	
	transformations isRingResolved ifFalse: [ 
		self pvtCleanTransformations  ].
	
	transformations add: anRGTraitTransformation.	
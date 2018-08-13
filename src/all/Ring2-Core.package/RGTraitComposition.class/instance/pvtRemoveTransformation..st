private - backend access
pvtRemoveTransformation: anRGTraitTransformation

	self environment verifyOwnership: anRGTraitTransformation.
	
	transformations remove: anRGTraitTransformation.
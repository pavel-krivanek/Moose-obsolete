instance creation
openOn: aFamixAttribute onAccept: aBlock
	^ self new
		model: aFamixAttribute;
		onAccept: aBlock;
		open
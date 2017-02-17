accessing - computed
elementsWithModel
	^ self view elements select: [ :e | e model notNil ]
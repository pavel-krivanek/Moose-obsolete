accessing
allLeafConcerns
	| leafs |
	leafs := OrderedCollection new.
	self withAllChildrenDo: [:each | 
		each isComposite ifFalse: [
			leafs add: each ]].
	^ leafs
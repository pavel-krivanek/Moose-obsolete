queries - transformations
transformations

	| allTransformations |
	allTransformations := OrderedCollection new.
	self transformationsDo: [ :each | allTransformations add: each].
	^ allTransformations

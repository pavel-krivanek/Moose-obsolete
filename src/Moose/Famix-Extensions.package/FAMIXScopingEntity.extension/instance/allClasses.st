*Famix-Extensions
allClasses
	| result |
	result := OrderedCollection new.
	self withAllChildScopesDo: [ :each | result addAll: each classes ].
	^ result
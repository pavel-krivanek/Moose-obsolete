*Famix-Extensions
withAllParentScopes
	| result |
	result := OrderedCollection new.
	self withAllParentScopesDo: [ :each | result add: each].
	^ result 
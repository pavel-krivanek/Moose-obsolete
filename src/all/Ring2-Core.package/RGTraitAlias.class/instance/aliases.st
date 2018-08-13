queries - aliases
aliases

	| allAliases |
	allAliases := OrderedCollection new.
	self aliasesDo: [ :each | allAliases add: each].
	^ allAliases 

queries - exclusions
exclusions

	| allExclusions |
	allExclusions := OrderedCollection new.
	self exclusionsDo: [ :each | allExclusions add: each].
	^ allExclusions

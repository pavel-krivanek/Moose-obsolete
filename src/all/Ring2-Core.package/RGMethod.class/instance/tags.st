accessing - model
tags

	| allTags |
	allTags := IdentitySet new.
	self tagsDo: [ :each | allTags add: each].
	^ allTags asArray

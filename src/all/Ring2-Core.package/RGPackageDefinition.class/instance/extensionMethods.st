accessing
extensionMethods

	| allMethods |
	allMethods := IdentitySet new.
	self extensionMethodsDo: [ :each | allMethods add: each].
	^ allMethods asArray

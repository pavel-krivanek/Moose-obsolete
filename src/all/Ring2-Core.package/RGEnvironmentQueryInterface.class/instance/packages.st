as yet unclassified
packages
	"Retrieves the traits defined in the receiver"

	| allPackages |
	allPackages := IdentitySet new.
	self packagesDo: [ :each | allPackages add: each].
	^ allPackages asArray

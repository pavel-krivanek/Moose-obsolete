as yet unclassified
globalVariables
	"Retrieves the traits defined in the receiver"

	| allGlobalVariables |
	allGlobalVariables := IdentitySet new.
	self globalVariablesDo: [ :each | allGlobalVariables add: each].
	^ allGlobalVariables asArray

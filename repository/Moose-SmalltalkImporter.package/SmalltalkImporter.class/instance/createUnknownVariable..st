private-entity-creation
createUnknownVariable: name

	| unknown |
	unknown := globals
		at: name
		put: FAMIXUnknownVariable new.
	unknown name: name.
	^unknown
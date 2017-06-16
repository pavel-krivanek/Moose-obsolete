private-entity-creation
createUnknownVariable: name

	| unknown |
	unknown := globals
		at: name
		put: FmxStUnknownVariable new.
	unknown name: name.
	^unknown
private-entity-creation
createSpecialVariable: name forClass: aClass

	| attribute |
	attribute := (self scopeOfClass: aClass) at: name bind: FAMIXImplicitVariable new.
	attribute name: name.
	attribute container: (self ensureClass: aClass).	
	^attribute
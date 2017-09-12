private-entity-creation
createSpecialVariable: name forClass: aClass

	| attribute |
	attribute := (self scopeOfClass: aClass) at: name bind: FmxStImplicitVariable new.
	attribute name: name.
	attribute container: (self ensureClass: aClass).	
	^attribute
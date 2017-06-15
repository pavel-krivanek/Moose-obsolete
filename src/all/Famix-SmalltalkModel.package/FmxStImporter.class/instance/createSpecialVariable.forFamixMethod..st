private-entity-creation
createSpecialVariable: name forFamixMethod: aFamixMethod

	| attribute |
	attribute := "(self scopeOfClass: aClass) at: name bind:" FmxStImplicitVariable new.
	attribute name: name.
	attribute parentBehaviouralEntity: aFamixMethod.
	^attribute
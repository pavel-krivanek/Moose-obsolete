private-entity-creation
createSpecialVariable: name forFamixMethod: aFamixMethod

	| attribute |
	attribute := "(self scopeOfClass: aClass) at: name bind:" FAMIXImplicitVariable new.
	attribute name: name.
	attribute parentBehaviouralEntity: aFamixMethod.
	^attribute
compatibility with visitor
createSpecialVariable: name forClass: aClass

	| attribute |
	attribute := (self scopeOfClass: aClass) at: name bind: FAMIXImplicitVariable new.
	attribute name: name.
	attribute container: aClass.	
	^attribute
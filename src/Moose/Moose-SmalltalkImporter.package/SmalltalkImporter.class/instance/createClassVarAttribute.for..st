private-entity-creation
createClassVarAttribute: name for: aClass 
	"a classVar always belongs to the base class"
	| attribute |
	
	attribute := FAMIXAttribute new.
	(self scopeOfClass: aClass) 
		at: name
		bind: attribute.
	(self scopeOfClass: aClass class)
		at: name 
		bind: attribute.
	attribute stub: true.
	attribute name: name asSymbol.
	attribute parentType: (self ensureClass: aClass theNonMetaClass).
	attribute hasClassScope: true.
	attribute beSharedVariable.
	attribute beProtected.
	^ attribute
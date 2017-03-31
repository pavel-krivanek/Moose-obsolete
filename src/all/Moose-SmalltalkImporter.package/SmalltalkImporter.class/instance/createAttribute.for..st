private-entity-creation
createAttribute: name for: aClass 
	| attribute realName possibleTypes |
	realName := self 
		nameForInstanceVariable: name
		class: aClass.
	attribute := (self scopeOfClass: aClass) 
		at: realName
		bind: FAMIXAttribute new.
	attribute stub: true.
	attribute name: realName asSymbol.
	importingContext shouldMergeClassAndMetaclass 
		ifTrue: [ attribute parentType: (self ensureClass: aClass instanceSide) ]
		ifFalse: [ attribute parentType: (self ensureClass: aClass) ].
	attribute hasClassScope: aClass isMeta.
	attribute beProtected.
	"now we use RoelTyper to see a unique type can be retrieve for this attribute: "
	importingContext shouldComputeTypeOfAttributes 
		ifTrue: [
			possibleTypes := (TypeCollector typeInstvar: name asSymbol ofClassWithLookup: aClass ) types. 
			possibleTypes size = 1
				ifTrue: [attribute declaredType: (self ensureClass: possibleTypes first theNonMetaClass) ].
			].
	^ attribute
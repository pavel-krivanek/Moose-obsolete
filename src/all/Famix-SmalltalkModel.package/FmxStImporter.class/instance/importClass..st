private-entity-creation
importClass: aClass 
	 
	| class comment | 
	importingContext shouldImportClass 
		ifTrue: 
			[class := self ensureClass: aClass. 
			class stub: false.
			class attributes do: [ :each | each stub: false ].
			importingContext shouldImportPackage ifTrue: [
				class parentPackage stub: false ].
			importingContext shouldImportSubclasses ifTrue: [aClass subclasses do: [:each | self ensureClass: each]]. 
			importingContext shouldImportMethod 
				ifTrue: 
					[aClass methods do: [:each | self ensureMethod: each]. 
					self checkAbstractClass: class]. 
			importingContext shouldImportComment 
				ifTrue: 
					[aClass hasComment 
						ifTrue: 
							[comment := self addEntity: FmxStComment new. 
							comment content: aClass comment asString. 
							comment container: class]]. 
			aClass isMeta ifFalse: [self importClass: aClass class]]
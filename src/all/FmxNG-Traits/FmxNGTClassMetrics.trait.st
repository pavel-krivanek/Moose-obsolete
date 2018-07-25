Trait {
	#name : #FmxNGTClassMetrics,
	#category : #'FmxNG-Traits-Support'
}

{ #category : #meta }
FmxNGTClassMetrics classSide >> annotation [

	<MSEClass: #TClassMetrics super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTClassMetrics classSide >> generatedSlotNames [
	<generated>
	'FmxNGTClassMetrics class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTClassMetrics classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> fanIn [
	<MSEProperty: #fanIn type: #Number>
	<derived>
	<MSEComment: 'Number of client classes'>

	^self
		lookUpPropertyNamed: #fanIn
		computedAs: [self clientTypes size]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> fanIn: aNumber [

	self privateState propertyAt: #fanIn put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> fanOut [
	<MSEProperty: #fanOut type: #Number>
	<derived>
	<MSEComment: 'Number of provider classes'>

	^self
		lookUpPropertyNamed: #fanOut
		computedAs: [self providerTypes size]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> fanOut: aNumber [

	self privateState propertyAt: #fanOut put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> hierarchyNestingLevel [
	<MSEProperty: #hierarchyNestingLevel type: #Number>
	<derived>
	<MSEComment: 'The nesting of a class inside the hierarchy'>

	^self
		lookUpPropertyNamed: #hierarchyNestingLevel
		computedAs:
			[| currentMaxDepth |
			(self directSuperclasses isEmpty or: [self isStub])
				ifTrue: [0]
				ifFalse:
					[currentMaxDepth := 0.
					self
						allSuperclassesDo:
							[:aClass | currentMaxDepth := currentMaxDepth max: aClass hierarchyNestingLevel].
					currentMaxDepth + 1]]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> hierarchyNestingLevel: aNumber [

	self privateState propertyAt: #hierarchyNestingLevel put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfAbstractMethods [
	<MSEProperty: #numberOfAbstractMethods type: #Number>
	<derived>
	<MSEComment: 'The number of abstract methods in the class'>
	
	^self
		lookUpPropertyNamed: #numberOfAbstractMethods
		computedAs: [self methodsGroup count: [:each | each isAbstract]]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfAbstractMethods: aNumber [

	self privateState propertyAt: #numberOfAbstractMethods put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfAccessesToForeignData [
	<MSEProperty: #numberOfAccessesToForeignData type: #Number>
	<derived>
	<MSEComment: 'Number of accesses to foreign data'>
	
	^self
		lookUpPropertyNamed: #numberOfAccessesToForeignData
		computedAs: [self notExistentMetricValue]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfAccessesToForeignData: aNumber [

	self privateState propertyAt: #numberOfAccessesToForeignData put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfAccessorMethods [
	<MSEProperty: #numberOfAccessorMethods type: #Number>
	<derived>
	<MSEComment: 'The number of accessor methods in a class'>
	^ self
		lookUpPropertyNamed: #numberOfAccessorMethods
		computedAs: [ 
			| noa |
			noa := 0.
			self methods
				do: [ :method | 
					method isPureAccessor
						ifNotNil: [ 
							(method isPureAccessor or: [ (method propertyNamed: #AccessorMethod) isNil not ])
								ifTrue: [ noa := noa + 1 ] ] ].
			noa ]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfAccessorMethods: aNumber [

	self privateState propertyAt: #numberOfAccessorMethods put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfAnnotationInstances [
	<MSEProperty: #numberOfAnnotationInstances type: #Number>
	<derived>
	<MSEComment: 'The number of annotation instances defined in the class or in any of its methods'>

	^self
		lookUpPropertyNamed: #numberOfAnnotationInstances
		computedAs: [
			self annotationInstances size + (self methods inject: 0 into: [:sum :each | sum + each numberOfAnnotationInstances])]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfAnnotationInstances: aNumber [

	self privateState propertyAt: #numberOfAnnotationInstances put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfAttributesInherited [
	<MSEProperty: #numberOfAttributesInherited type: #Number>
	<derived>
	<MSEComment: 'The number of attributes in a class inherited from super classes'>	
	
	^self
		lookUpPropertyNamed: #numberOfAttributesInherited
		computedAs: [self inheritedAttributes size]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfAttributesInherited: aNumber [

	self privateState propertyAt: #numberOfAttributesInherited put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfConstructorMethods [
	<MSEProperty: #numberOfConstructorMethods type: #Number>
	<derived>
	<MSEComment: 'The number of constructor methods in a class'>
	^ self
		lookUpPropertyNamed: #numberOfConstructorMethods
		computedAs: [ 
			| nc |
			nc := 0.
			self methods
				do: [ :method | 
					method isConstructor
						ifNotNil: [ 
							method isConstructor
								ifTrue: [ nc := 1 ] ] ].
			nc ]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfConstructorMethods: aNumber [

	self privateState propertyAt: #numberOfConstructorMethods put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfDirectSubclasses [
	<MSEProperty: #numberOfDirectSubclasses type: #Number>
	<MSEComment: 'The number of direct subclasses'>
	<derived>

	^ self privateState propertyAt: #numberOfDirectSubclasses ifAbsentPut: [self directSubclasses size]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfDirectSubclasses: aNumber [

	self privateState propertyAt: #numberOfDirectSubclasses put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfDuplicatedLinesOfCodeInternally [
	<MSEProperty: #numberOfDuplicatedLinesOfCodeInternally type: #Number>
	<derived>
	<MSEComment: 'The number of duplicated lines of code internally'>		

	^self
		lookUpPropertyNamed: #numberOfDuplicatedLinesOfCodeInternally
		computedAs: [self notExistentMetricValue]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfDuplicatedLinesOfCodeInternally: aNumber [

	self privateState propertyAt: #numberOfDuplicatedLinesOfCodeInternally put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfLinesOfCode [

	<MSEProperty: #numberOfLinesOfCode type: #Number>
	<derived>
	<MSEComment: 'The number of lines of code in a class'>

	^self
		lookUpPropertyNamed: #numberOfLinesOfCode
		computedAs: [self methodsGroup sumNumbers: #numberOfLinesOfCode]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfLinesOfCode: aNumber [

	self privateState propertyAt: #numberOfLinesOfCode put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfMessageSends [
	<MSEProperty: #numberOfMessageSends type: #Number>
	<derived>
	<MSEComment: 'The number of message sends from a class'>
	
	^self
		lookUpPropertyNamed: #numberOfMessageSends
		computedAs: [self methodsGroup sumNumbers: #numberOfMessageSends]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfMessageSends: aNumber [

	self privateState propertyAt: #numberOfMessageSends put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfMethodProtocols [
	<MSEProperty: #numberOfMethodProtocols type: #Number>
	<derived>
	<MSEComment: 'The number of method protocols in a class'>
	
	^self
		lookUpPropertyNamed: #numberOfMethodProtocols
		computedAs: [((self methods collect: [:each | each category]) reject: #isNil) asSet size]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfMethodProtocols: aNumber [

	self privateState propertyAt: #numberOfMethodProtocols put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfMethodsAdded [
	<MSEProperty: #numberOfMethodsAdded type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a class added with respect to super classes'>	
	
	^self
		lookUpPropertyNamed: #numberOfMethodsAdded
		computedAs: [self addedMethods size]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfMethodsAdded: aNumber [

	self privateState propertyAt: #numberOfMethodsAdded put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfMethodsInHierarchy [
	<MSEProperty: #numberOfMethodsInHierarchy type: #Number>
	<derived>
	<MSEComment: 'The number of methods of a class included the inherited ones'>	
	
	| totNom |
	totNom := self methods size.
	self superclassHierarchyGroup
		do: [:aClass | totNom := totNom + aClass methods size].
	^totNom
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfMethodsInHierarchy: aNumber [

	self privateState propertyAt: #numberOfMethodsInHierarchy put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfMethodsInherited [
	<MSEProperty: #numberOfMethodsInherited type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a class inherited from super classes'>	

	^self
		lookUpPropertyNamed: #numberOfMethodsInherited
		computedAs: [self inheritedMethods size]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfMethodsInherited: aNumber [

	self privateState propertyAt: #numberOfMethodsInherited put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfMethodsOverriden [
	<MSEProperty: #numberOfMethodsOverriden type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a class overriden with respect to super classes'>
			
	^self
		lookUpPropertyNamed: #numberOfMethodsOverriden
		computedAs: [self numberOfMethods - self numberOfMethodsAdded]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfMethodsOverriden: aNumber [

	self privateState propertyAt: #numberOfMethodsOverriden put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfParents [
	<MSEProperty: #numberOfParents type: #Number>
	<derived>
	<MSEComment: 'The number of superclasses'>
			
	^self
		lookUpPropertyNamed: #numberOfParents
		computedAs: [self directSuperclasses size]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfParents: aNumber [

	self privateState propertyAt: #numberOfParents put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfPrivateAttributes [
	<MSEProperty: #numberOfPrivateAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of private attributes in a class'>
	
	^self
		lookUpPropertyNamed: #numberOfPrivateAttributes
		computedAs: [(self attributes select: [:each | each isPrivate]) size]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfPrivateAttributes: aNumber [

	self privateState propertyAt: #numberOfPrivateAttributes put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfPrivateMethods [
	<MSEProperty: #numberOfPrivateMethods type: #Number>
	<derived>
	<MSEComment: 'The number of private methods in a class'>
			
	^self
		lookUpPropertyNamed: #numberOfPrivateMethods
		computedAs: [(self methods select: [:each | each isPrivate]) size]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfPrivateMethods: aNumber [

	self privateState propertyAt: #numberOfPrivateMethods put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfProtectedAttributes [
	<MSEProperty: #numberOfProtectedAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of protected attributes in a class'>				
	
	^self
		lookUpPropertyNamed: #numberOfProtectedAttributes
		computedAs: [(self attributes select: [:each | each isProtected]) size]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfProtectedAttributes: aNumber [

	self privateState propertyAt: #numberOfProtectedAttributes put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfProtectedMethods [
	<MSEProperty: #numberOfProtectedMethods type: #Number>
	<derived>
	<MSEComment: 'The number of protected methods in a class'>		
	
	^self
		lookUpPropertyNamed: #numberOfProtectedMethods
		computedAs: [(self methods select: [:each | each isProtected]) size]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfProtectedMethods: aNumber [

	self privateState propertyAt: #numberOfProtectedMethods put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfPublicAttributes [
	<MSEProperty: #numberOfPublicAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of public attributes in a class'>
	
	^self
		lookUpPropertyNamed: #numberOfPublicAttributes
		computedAs: [(self attributes select: [:each | each isPublic]) size]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfPublicAttributes: aNumber [

	self privateState propertyAt: #numberOfPublicAttributes put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfPublicMethods [
	<MSEProperty: #numberOfPublicMethods type: #Number>
	<derived>
	<MSEComment: 'The number of public methods in a class'>		
		
	^self
		lookUpPropertyNamed: #numberOfPublicMethods
		computedAs: [(self methods select: [:each | each isPublic]) size]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfPublicMethods: aNumber [

	self privateState propertyAt: #numberOfPublicMethods put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfRevealedAttributes [
	<MSEProperty: #numberOfRevealedAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of public attributes plus the number of accessor methods'>		

	^self
		lookUpPropertyNamed: #numberOfRevealedAttributes
		computedAs:
			[self numberOfPublicAttributes + self numberOfAccessorMethods]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfRevealedAttributes: aNumber [

	self privateState propertyAt: #numberOfRevealedAttributes put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfStatements [
	<MSEProperty: #numberOfStatements type: #Number>
	<derived>
	<MSEComment: 'The number of statements in a class'>
			
	^self
		lookUpPropertyNamed: #numberOfStatements
		computedAs: [self methodsGroup sumNumbers: #numberOfStatements]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfStatements: aNumber [

	self privateState propertyAt: #numberOfStatements put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfSubclasses [
	<MSEProperty: #numberOfSubclasses type: #Number>
	<derived>
	<MSEComment: 'The number of subclasses of a class'>
	^ self lookUpPropertyNamed: #numberOfSubclasses computedAs: [ self subInheritances size ]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> numberOfSubclasses: aNumber [

	self privateState propertyAt: #numberOfSubclasses put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> outgoingInvocations [
	^ self methods flatCollect: [ :each | each outgoingInvocations ]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> outgoingInvocationsGroup [
	<navigation: 'Outgoing invocations'>
	^ self privateState cacheAt:
		#outgoingInvocationsGroup
		ifAbsentPut:
			[MooseGroup
				withAll: self outgoingInvocations
				withDescription: 'Outgoing invocations from ' , self mooseName]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> subclassHierarchyDepth [ 
	<MSEProperty: #subclassHierarchyDepth type: #Number>
	<derived>
	<MSEComment: 'The depth of the class hierarchy for which I am the root'>
		
	^ self directSubclasses isEmpty 
		ifTrue: [ 0 ] 
		ifFalse: 
			[ | currentMaxDepth| 
				currentMaxDepth := 0. 
				self allSubclassesDo: 
					[ :aClass | currentMaxDepth := currentMaxDepth max: aClass subclassHierarchyDepth ]. 
            1 + currentMaxDepth ] 
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> subclassHierarchyDepth: aNumber [

	self privateState propertyAt: #subclassHierarchyDepth put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> tightClassCohesion [
	<MSEProperty: #tightClassCohesion type: #Number>
	<derived>
	<MSEComment: 'Tight class cohesion of a class'>
	self flag: #TODO.
	^ self
		lookUpPropertyNamed: #tightClassCohesion
		computedAs: [ 
			| tcc accessDictionary nom |
			tcc := 0.
			accessDictionary := Dictionary new.
			self
				methodsDo: [ :eachMethod | 
					eachMethod accesses
						do: [ :eachAccess | 
							| var |
							var := eachAccess variable.
							var isAttribute
								ifTrue: [ 
									| varName accessedFrom |
									varName := var name.
									accessedFrom := accessDictionary at: varName ifAbsent: [  ].
									accessedFrom isNil
										ifTrue: [ 
											accessedFrom := Set new.
											accessDictionary at: varName put: accessedFrom ].
									accessedFrom add: eachMethod name ] ] ].
			accessDictionary values
				do: [ :each | 
					| size |
					size := each size.
					tcc := tcc + (size * (size - 1) / 2) ].
			nom := self numberOfMethods.
			tcc := (nom = 0 or: [ nom = 1 ])
				ifFalse: [ tcc / (nom * (nom - 1) / 2) ]
				ifTrue: [ 0 ].
			tcc asFloat ]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> tightClassCohesion: aNumber [

	self privateState propertyAt: #tightClassCohesion put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> totalNumberOfChildren [
	<MSEProperty: #totalNumberOfChildren type: #Number>
	<derived>	
	<MSEComment: 'The total number of subclasses of a class'>
	
	^self
		lookUpPropertyNamed: #totalNumberOfChildren
		computedAs: [self subclassHierarchyGroup size]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> totalNumberOfChildren: aNumber [

	self privateState propertyAt: #totalNumberOfChildren put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> weightOfAClass [
	<MSEProperty: #weightOfAClass type: #Number>
	<derived>
	<MSEComment: 'Weight of a class'>	
			
	^self
		lookUpPropertyNamed: #weightOfAClass
		computedAs: [self notExistentMetricValue]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> weightOfAClass: aNumber [

	self privateState propertyAt: #weightOfAClass put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> weightedMethodCount [
	<MSEProperty: #weightedMethodCount type: #Number>
	<derived>
	<MSEComment: 'The sum of the complexity in a class'>
			
	^self
		lookUpPropertyNamed: #weightedMethodCount
		computedAs: [self methodsGroup sumNumbers: #cyclomaticComplexity]
]

{ #category : #'Famix-Implementation' }
FmxNGTClassMetrics >> weightedMethodCount: aNumber [

	self privateState propertyAt: #weightedMethodCount put: aNumber
]

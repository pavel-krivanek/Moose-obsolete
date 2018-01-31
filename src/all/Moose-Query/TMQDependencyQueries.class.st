Class {
	#name : #TMQDependencyQueries,
	#superclass : #Object,
	#category : #'Moose-Query-FamixNG'
}

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> createIncomingQueryResultWith: aCollection [
	^ MooseIncomingQueryResult on: self withAll: aCollection
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> createOutgoingQueryResultWith: aCollection [
	^ MooseOutgoingQueryResult on: self withAll: aCollection
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> incomingTypeDeclarations [
	"Should return the incoming type declarations of the entity as MooseChefTypeDeclarationAssociation.
	
	typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type."

	^ self explicitRequirement
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> outgoingTypeDeclarations [
	"Should return the outgoing type declarations of the entity as MooseChefTypeDeclarationAssociation.
	
	typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type."

	^ self explicitRequirement
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> query: anInOutSymbol with: aFAMIXClassAssociation [
	"Query all the incoming or outgoing associations of the FAMIXClassAssociation class for the receiver and its children.

	Example:
		aFAMIXClass query: #in with: FAMIXInheritance.
			--> Will return a MooseIncomingQueryResult containing the FAMIXInheritance associations having aFAMIXClass or its children as target
		aFAMIXMethod query: #out with: FAMIXAccess.
			--> Will return a MooseOutgoingQueryResult containing the FAMIXAccess associations having aFAMIXMethod or its children as source
	"

	^ (MooseQueryCalculator direction: anInOutSymbol) query: aFAMIXClassAssociation for: self
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryAll: anInOutSymbol [
	"Query all the incoming or outgoing associations of the receiver or its children.

	Example:
		aFAMIXClass queryAll: #in.
			--> Will return a MooseIncomingQueryResult containing the FAMIXAssociation having aFAMIXClass or its children as target
		aFAMIXMethod queryAll: #out.
			--> Will return a MooseOutgoingQueryResult containing the FAMIXAssociation having aFAMIXMethod or its children as source
	"

	^ (MooseQueryCalculator direction: anInOutSymbol) queryAllFor: self
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryAllIncoming [
	"Query all the incoming associations of the receiver and its children.

	Example:
		aFAMIXClass queryAllIncoming.
			--> Will return a MooseIncomingQueryResult containing the FAMIXAssociation having aFAMIXClass or its children as target
	"

	^ (MooseQueryCalculator strategy: MooseQueryIncomingDirectionStrategy) queryAllFor: self
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryAllIncomingInvocations [
	^ self queryIncoming: FAMIXInvocation
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryAllLocal: anInOutSymbol [
	"Query all the incoming or outgoing associations of the receiver.
	This method differ from #queryAll: in the fact that it will not check the associations of the reicever's children.

	Example:
		aFAMIXClass queryAllLocal: #in.
			--> Will return a MooseIncomingQueryResult containing the FAMIXAssociation having aFAMIXClass as target
		aFAMIXMethod queryAllLocal: #out.
			--> Will return a MooseOutgoingQueryResult containing the FAMIXAssociation having aFAMIXMethod as source
	"

	^ (MooseQueryCalculator direction: anInOutSymbol) queryAllLocalFor: self
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryAllLocalIncoming [
	"Query all the incoming associations of the receiver.
	This method differ from #queryAllIncoming in the fact that it will not check the associations of the reicever's children.

	Example:
		aFAMIXClass queryAllLocalIncoming.
			--> Will return a MooseIncomingQueryResult containing the FAMIXAssociation having aFAMIXClass as target
	"

	^ (MooseQueryCalculator strategy: MooseQueryIncomingDirectionStrategy) queryAllLocalFor: self
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryAllLocalOutgoing [
	"Query all the outgoing associations of the receiver.
	This method differ from #queryAllOutgoing in the fact that it will not check the associations of the reicever's children.

	Example:
		aFAMIXClass queryAllLocalOutgoing.
			--> Will return a MooseOutgoingQueryResult containing the FAMIXAssociation having aFAMIXClass as source
	"

	^ (MooseQueryCalculator strategy: MooseQueryOutgoingDirectionStrategy) queryAllLocalFor: self
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryAllOutgoing [
	"Query all the outgoing associations of the receiver and its children.

	Example:
		aFAMIXClass queryAllOutgoing.
			--> Will return a MooseOutgoingQueryResult containing the FAMIXAssociation having aFAMIXClass or its children as source
	"

	^ (MooseQueryCalculator strategy: MooseQueryOutgoingDirectionStrategy) queryAllFor: self
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryAllOutgoingAssociations [
	"Be careful while using me. I hardcode the associations I should query. Users can override me if they want to query only certain types of association for performance reasons. If you prefere to be sure of your results you should use #queryAllOutgoing instead."

	^ self queryStaticOutgoingAssociations
		addAll: self queryAllOutgoingInvocations;
		yourself
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryAllOutgoingInvocations [
	^ self queryOutgoing: FAMIXInvocation
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryIncoming: aFAMIXClassAssociation [
	"Query all the incoming associations of the FAMIXClassAssociation class for the receiver and its children.

	Example:
		aFAMIXClass queryIncoming: FAMIXInheritance.
			--> Will return a MooseIncomingQueryResult containing the FAMIXInheritance associations having aFAMIXClass or its children as target
	"

	^ (MooseQueryCalculator strategy: MooseQueryIncomingDirectionStrategy) query: aFAMIXClassAssociation for: self
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryIncomingAccesses [
	^ self queryIncoming: FAMIXAccess
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryIncomingDependencies [
	"Associations + typeDeclaractions"

	^ self queryAllIncoming
		addAll: self queryIncomingTypeDeclarations;
		yourself
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryIncomingReferences [
	^ self queryIncoming: FAMIXReference
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryIncomingTypeDeclarations [
	"This method should return the incoming type declarations that are not represented in FAMIX and that cannot be query by a generic algorithme.
	
	typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type."

	^ self createIncomingQueryResultWith: (self queryIncomingTypeDeclarationsIn: OrderedCollection new) asSet
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryIncomingTypeDeclarationsIn: aCollection [
	"This method could be more readable but it needs to be really performant"

	| selectors |
	1 to: (selectors := self childrenSelectors) size do: [ :index | 
		(self perform: (selectors at: index))
			ifNotNil: [ :children | 
				| coll |
				1 to: (coll := children asCollection) size do: [ :i | (coll at: i) queryIncomingTypeDeclarationsIn: aCollection ] ] ].
	aCollection addAll: self incomingTypeDeclarations.
	^ aCollection
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryLocal: anInOutSymbol with: aFAMIXClassAssociation [
	"Query all the incoming or outgoing associations of the FAMIXClassAssociation class for the receiver.
	This method differ from #query:with: in the fact that it will not check the associations of the reicever's children.

	Example:
		aFAMIXClass queryLocal: #in with: FAMIXInheritance.
			--> Will return a MooseIncomingQueryResult containing the FAMIXInheritance associations having aFAMIXClass as target
		aFAMIXMethod queryLocal: #out with: FAMIXAccess.
			--> Will return a MooseOutgoingQueryResult containing the FAMIXAccess associations having aFAMIXMethod as source
	"

	^ (MooseQueryCalculator direction: anInOutSymbol) queryLocal: aFAMIXClassAssociation for: self
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryLocalIncoming: aFAMIXClassAssociation [
	"Query all the incoming associations of the FAMIXClassAssociation class for the receiver.
	This method differ from #queryIncoming: in the fact that it will not check the associations of the reicever's children.

	Example:
		aFAMIXClass queryLocalIncoming: FAMIXInheritance.
			--> Will return a MooseIncomingQueryResult containing the FAMIXInheritance associations having aFAMIXClass as target
	"

	^ (MooseQueryCalculator strategy: MooseQueryIncomingDirectionStrategy) queryLocal: aFAMIXClassAssociation for: self
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryLocalOutgoing: aFAMIXClassAssociation [
	"Query all the outgoing associations of the FAMIXClassAssociation class for the receiver.
	This method differ from #queryOutgoing: in the fact that it will not check the associations of the reicever's children.
	
	Example:
		aFAMIXClass queryLocalOutgoing: FAMIXInheritance.
			--> Will return a MooseOutgoingQueryResult containing the FAMIXInheritance associations having aFAMIXClass as source
	"

	^ (MooseQueryCalculator strategy: MooseQueryOutgoingDirectionStrategy) queryLocal: aFAMIXClassAssociation for: self
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryOutgoing: aFAMIXClassAssociation [
	"Query all the outgoing associations of the FAMIXClassAssociation class for the receiver and its children.
	
	Example:
		aFAMIXClass queryOutgoing: FAMIXInheritance.
			--> Will return a MooseOutgoingQueryResult containing the FAMIXInheritance associations having aFAMIXClass or its children as source
	"

	^ (MooseQueryCalculator strategy: MooseQueryOutgoingDirectionStrategy) query: aFAMIXClassAssociation for: self
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryOutgoingAccesses [
	^ self queryOutgoing: FAMIXAccess
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryOutgoingDependencies [
	"Associations + typeDeclarations"

	^ self queryAllOutgoing
		addAll: self queryOutgoingTypeDeclarations;
		yourself
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryOutgoingReferences [
	^ self queryOutgoing: FAMIXReference
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryOutgoingTypeDeclarations [
	"This method should return the outgoing type declarations that are not represented in FAMIX and that cannot be query by a generic algorithme.
	
	typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type."

	^ self createOutgoingQueryResultWith: (self queryOutgoingTypeDeclarationsIn: OrderedCollection new) asSet
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryOutgoingTypeDeclarationsIn: aCollection [
	"This method could be more readable but it needs to be really performant"

	| selectors |
	1 to: (selectors := self childrenSelectors) size do: [ :index | 
		(self perform: (selectors at: index))
			ifNotNil: [ :children | 
				| coll |
				1 to: (coll := children asCollection) size do: [ :i | (coll at: i) queryOutgoingTypeDeclarationsIn: aCollection ] ] ].
	aCollection addAll: self outgoingTypeDeclarations.
	^ aCollection
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryStaticIncomingAssociations [
	^ self queryIncomingAccesses
		addAll: self queryIncomingReferences;
		yourself
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> queryStaticOutgoingAssociations [
	^ self queryOutgoingAccesses
		addAll: self queryOutgoingReferences;
		yourself
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> querySureIncomingAssociations [
	^ self queryStaticIncomingAssociations
		addAll: self querySureIncomingInvocations;
		yourself
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> querySureIncomingInvocations [
	^ self queryAllIncomingInvocations select: [ :invo | invo isASureInvocation ]
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> querySureOutgoingAssociations [
	^ self queryStaticOutgoingAssociations
		addAll: self querySureOutgoingInvocations;
		yourself
]

{ #category : #'moosequery-queries-generic' }
TMQDependencyQueries >> querySureOutgoingInvocations [
	^ self queryAllOutgoingInvocations select: [ :invo | invo isASureInvocation ]
]

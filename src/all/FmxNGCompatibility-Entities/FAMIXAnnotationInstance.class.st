Class {
	#name : #FAMIXAnnotationInstance,
	#superclass : #FAMIXSourcedEntity,
	#traits : 'FmxNGTAnnotationInstance + FmxNGTTypedAnnotationInstance + FmxNGTWithAnnotationInstanceAttributes + TEntityMetaLevelDependency + TDependencyQueries',
	#classTraits : 'FmxNGTAnnotationInstance classTrait + FmxNGTTypedAnnotationInstance classTrait + FmxNGTWithAnnotationInstanceAttributes classTrait + TEntityMetaLevelDependency classTrait + TDependencyQueries classTrait',
	#classInstVars : [
		'#childrenSelectors',
		'#allParentTypes',
		'#parentSelectors',
		'#cVar',
		'#allChildrenTypes'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #accessing }
FAMIXAnnotationInstance class >> allOutgoingAssociationTypes [
	^ self privateAllOutgoingAssociationTypes
]

{ #category : #'Moose-Query-Extensions' }
FAMIXAnnotationInstance class >> allParentTypes [
	^ allParentTypes ifNil: [ allParentTypes := self privateAllParentTypes ]
]

{ #category : #meta }
FAMIXAnnotationInstance class >> annotation [

	<generated>
	<MSEClass: #AnnotationInstance super: #FAMIXSourcedEntity>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #'Moose-Query-Extensions' }
FAMIXAnnotationInstance class >> childrenSelectors [
	^ childrenSelectors ifNil: [ childrenSelectors := self privateChildrenSelectors ]
]

{ #category : #'Moose-Query-Extensions' }
FAMIXAnnotationInstance class >> childrenTypes [
	^ self privateChildrenTypes
]

{ #category : #generator }
FAMIXAnnotationInstance class >> generatedSlotNames [
	<generated>
	'FAMIXAnnotationInstance class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FAMIXAnnotationInstance class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAnnotationInstance FmxNGTTypedAnnotationInstance FmxNGTWithAnnotationInstanceAttributes)
]

{ #category : #'Moose-Query-Extensions' }
FAMIXAnnotationInstance class >> parentSelector [
	self 
		deprecated: 'Use parentSelectors instead'
		on: 	'21 December 2016' 
		in: 'Pharo-6.0-60328-'
		transformWith: '`@receiver parentSelector' -> '`@receiver parentSelectors'.
	^ self parentSelectors
]

{ #category : #'Moose-Query-Extensions' }
FAMIXAnnotationInstance class >> parentSelectors [
	^ parentSelectors ifNil: [ parentSelectors := self privateParentSelectors ] 
]

{ #category : #'Moose-Query-Extensions' }
FAMIXAnnotationInstance class >> parentTypes [
	^ self privateParentTypes 
]

{ #category : #meta }
FAMIXAnnotationInstance class >> requirements [

	<generated>
	^ { FAMIXAnnotationInstance. FAMIXNamedEntity }
]

{ #category : #'Moose-Query-Extensions' }
FAMIXAnnotationInstance class >> resetMooseQueryCaches [
	super resetMooseQueryCaches.
	childrenSelectors := nil.
	parentSelectors := nil.
	allChildrenTypes := nil.
	allParentTypes := nil
]

{ #category : #accessing }
FAMIXAnnotationInstance >> belongsTo [
	^ self annotatedEntity
]

{ #category : #accessing }
FAMIXAnnotationInstance >> mooseNameOn: aStream [
	self annotationType notNil ifTrue: [
		self annotationType mooseNameOn: aStream ].
	aStream nextPut: $(.
	self attributes 
			do: [:each | aStream nextPutAll: each value asString ]
			separatedBy: [aStream nextPut: $,].  
	aStream nextPut: $).
	aStream nextPut: $-.
	self annotatedEntity notNil ifTrue: [
		self annotatedEntity mooseNameOn: aStream ]
]

{ #category : #accessing }
FAMIXAnnotationInstance >> name [
	^ String
		streamContents: [ :stream | 
			stream << '@'
				<< (self annotationType ifNil: [ super name ] ifNotNil: [ :type | type name ])
				<< ' on ' << (self annotatedEntity ifNotNil: #name ifNil: [ 'undefined' ]) ]
]

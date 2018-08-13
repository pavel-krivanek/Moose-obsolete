Class {
	#name : #FmxNGJavaAnnotationInstance,
	#superclass : #FmxNGJavaSourcedEntity,
	#traits : 'FmxNGTAnnotationInstance + FmxNGTTypedAnnotationInstance + FmxNGTWithAnnotationInstanceAttributes + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FmxNGTAnnotationInstance classTrait + FmxNGTTypedAnnotationInstance classTrait + FmxNGTWithAnnotationInstanceAttributes classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaAnnotationInstance class >> annotation [

	<MSEClass: #AnnotationInstance super: #FmxNGJavaSourcedEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaAnnotationInstance class >> generatedSlotNames [
	<generated>
	'FmxNGJavaAnnotationInstance class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaAnnotationInstance class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAnnotationInstance FmxNGTTypedAnnotationInstance FmxNGTWithAnnotationInstanceAttributes TDependencyQueries TEntityMetaLevelDependency)
]

{ #category : #meta }
FmxNGJavaAnnotationInstance class >> requirements [

	<generated>
	^ { FmxNGJavaNamedEntity }
]

{ #category : #'Moose-Query' }
FmxNGJavaAnnotationInstance class >> resetMooseQueryCaches [
	super resetMooseQueryCaches.
	self resetTEntityMetaLevelDependencyCaches.

]

{ #category : #accessing }
FmxNGJavaAnnotationInstance >> belongsTo [

	<generated>
	^ self annotatedEntity

]

{ #category : #accessing }
FmxNGJavaAnnotationInstance >> belongsTo: anObject [

	<generated>
	self annotatedEntity: anObject

]

{ #category : #'as yet unclassified' }
FmxNGJavaAnnotationInstance >> mooseNameOn: aStream [
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

{ #category : #'as yet unclassified' }
FmxNGJavaAnnotationInstance >> name [
	^ String
		streamContents: [ :stream | 
			stream << '@'
				<< (self annotationType ifNil: [ super name ] ifNotNil: [ :type | type name ])
				<< ' on ' << (self annotatedEntity ifNotNil: #name ifNil: [ 'undefined' ]) ]
]

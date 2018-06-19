Class {
	#name : #FmxNGStAnnotationInstance,
	#superclass : #FmxNGStSourcedEntity,
	#traits : 'FmxNGTAnnotationInstance + FmxNGTTypedAnnotationInstance + FmxNGTWithAnnotationInstanceAttributes + TDependencyQueries',
	#classTraits : 'FmxNGTAnnotationInstance classTrait + FmxNGTTypedAnnotationInstance classTrait + FmxNGTWithAnnotationInstanceAttributes classTrait + TDependencyQueries classTrait',
	#classInstVars : [
		'#childrenSelectors',
		'#allParentTypes',
		'#allChildrenTypes',
		'#parentSelectors',
		'#cVar'
	],
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStAnnotationInstance class >> annotation [

	<generated>
	<MSEClass: #AnnotationInstance super: #FmxNGStSourcedEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FmxNGStAnnotationInstance class >> childrenSelectors [
	^ childrenSelectors ifNil: [ childrenSelectors := self privateChildrenSelectors ]
]

{ #category : #generator }
FmxNGStAnnotationInstance class >> generatedSlotNames [
	<generated>
	'FmxNGStAnnotationInstance class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStAnnotationInstance class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAnnotationInstance FmxNGTTypedAnnotationInstance FmxNGTWithAnnotationInstanceAttributes)
]

{ #category : #'Moose-Query' }
FmxNGStAnnotationInstance class >> incomingMSEProperties [
	^ #()
]

{ #category : #'Moose-Query' }
FmxNGStAnnotationInstance class >> outgoingMSEProperties [
	^ #()
]

{ #category : #'Moose-Query' }
FmxNGStAnnotationInstance class >> parentSelectors [
	^ parentSelectors ifNil: [ parentSelectors := self privateParentSelectors ] 
]

{ #category : #meta }
FmxNGStAnnotationInstance class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'moosequery-queries-incoming' }
FmxNGStAnnotationInstance >> incomingTypeDeclarations [
	"Should return the incoming type declarations of the entity as MooseChefTypeDeclarationAssociation.
	
	typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type."

	^ {}
]

{ #category : #accessing }
FmxNGStAnnotationInstance >> name [
	^ String
		streamContents: [ :stream | 
			stream << '@'
				<< (self annotationType ifNil: [ super name ] ifNotNil: [ :type | type name ])
				<< ' on ' << (self annotatedEntity ifNotNil: #name ifNil: [ 'undefined' ]) ]
]

{ #category : #'moosequery-queries-outgoing' }
FmxNGStAnnotationInstance >> outgoingTypeDeclarations [
	"Should return the outgoing type declarations of the entity as MooseChefTypeDeclarationAssociation.
	
	typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type."

	^ {}
]

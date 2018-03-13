"
FAMIXType is a generic class representing a type. It has several specializations for specific kinds of types, the typical one being FAMIXClass.
A type is defined in a container (instance of FAMIXContainer). 
The container is typically a namespace (instance of FAMIXNamespace), but may also be a class (in the case of nested classes), or a method (in the case of anonymous classes).

A type can have multiple subtypes or supertypes. These are modelled by means of FAMIXInheritance instances.
"
Class {
	#name : #FmxNGTTypeGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#typeContainer => FMOne type: #FmxNGTWithTypes opposite: #types'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTTypeGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TTypeGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTTypeGenerated >> typeContainer [

	<MSEComment: 'Container entity to which this type belongs to. Container is a namespace, not a package (Smalltalk).'>
	<container>

	^ typeContainer
]

{ #category : #accessing }
FmxNGTTypeGenerated >> typeContainer: anObject [

	typeContainer := anObject

]

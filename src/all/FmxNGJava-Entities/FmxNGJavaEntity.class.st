"
file :=  'ArgoUML-0.34.mse' asFileReference readStream.

dictionary := Dictionary newFrom: (
	FmxNGJavaEntity withAllSubclasses collect: [ :c | 
		cn := c name withoutPrefix: #FmxNGJava.
		('FAMIX.', cn) -> ('FmxNGJava-Entities.', cn) ]).

dictionary at: 'FAMIX.JavaSourceLanguage' put: 'FmxNGJava-Entities.SourceLanguage'.

repo := MooseModel importFrom: file withMetamodel: FmxNGJavaGenerator metamodel translationDictionary: dictionary.

model := MooseModel new.
	model silentlyAddAll: repo elements.
	model entityStorage forRuntime.
model.
"
Class {
	#name : #FmxNGJavaEntity,
	#superclass : #MooseEntity,
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaEntity class >> annotation [

	<MSEClass: #Entity super: #MooseEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaEntity class >> generatedSlotNames [
	<generated>
	'FmxNGJavaEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaEntity class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGJavaEntity class >> metamodel [

	<generated>
	^ (self class environment at: #FmxNGJavaGenerator) metamodel
]

{ #category : #meta }
FmxNGJavaEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Moose-Query' }
FmxNGJavaEntity class >> resetMSEProperties [
	"
	self resetMSEProperties
		"

	self allSubclasses
		do: [ :aSubClass | 
			aSubClass resetMooseQueryCaches.]
]

{ #category : #'Moose-Query' }
FmxNGJavaEntity class >> resetMooseQueryCaches [
	"Here do nothing. Customize in subclasses."
]

{ #category : #'as yet unclassified' }
FmxNGJavaEntity >> belongsTo [
	"Return the primary container of the entity if it exist"
	
	^ self subclassResponsibility
]

{ #category : #testing }
FmxNGJavaEntity >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGJavaEntity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGJavaEntity >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGJavaEntity >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGJavaEntity >> isContainerEntity [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGJavaEntity >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGJavaEntity >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGJavaEntity >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGJavaEntity >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGJavaEntity >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGJavaEntity >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGJavaEntity >> isPrimitiveType [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGJavaEntity >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGJavaEntity >> isType [

	<generated>
	^ false
]

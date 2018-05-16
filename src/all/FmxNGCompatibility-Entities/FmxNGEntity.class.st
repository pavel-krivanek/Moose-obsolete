Class {
	#name : #FmxNGEntity,
	#superclass : #MooseEntity,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGEntity class >> annotation [

	<generated>
	<MSEClass: #Entity super: #MooseEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGEntity class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGEntity class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGEntity class >> metamodel [

	<generated>
	^ FmxNGCompatibilityGenerator metamodel
]

{ #category : #meta }
FmxNGEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Moose-Query-Extensions' }
FmxNGEntity class >> resetMSEProperties [
	"
	self resetMSEProperties
		"

	self allSubclasses
		do: [ :aSubClass | 
			aSubClass resetMooseQueryCaches.]
]

{ #category : #'Moose-Query-Extensions' }
FmxNGEntity class >> resetMooseQueryCaches [
	"Here do nothing. Customize in subclasses."
]

{ #category : #accessing }
FmxNGEntity >> belongsTo [
	"Return the primary container of the entity if it exist"
	
	^ self subclassResponsibility
]

{ #category : #testing }
FmxNGEntity >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGEntity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGEntity >> isAttribute [

	<generated>
	^ false
]

{ #category : #'testing - custom' }
FmxNGEntity >> isBehaviouralEntity [
	^ false
]

{ #category : #testing }
FmxNGEntity >> isClass [

	<generated>
	^ false
]

{ #category : #'testing - custom' }
FmxNGEntity >> isContainerEntity [
	^ false
]

{ #category : #testing }
FmxNGEntity >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGEntity >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGEntity >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGEntity >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGEntity >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGEntity >> isPackage [

	<generated>
	^ false
]

{ #category : #'testing - custom' }
FmxNGEntity >> isPrimitiveType [
	^ false
]

{ #category : #testing }
FmxNGEntity >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGEntity >> isType [

	<generated>
	^ false
]

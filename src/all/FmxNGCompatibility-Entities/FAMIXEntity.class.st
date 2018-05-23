Class {
	#name : #FAMIXEntity,
	#superclass : #MooseEntity,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXEntity class >> annotation [

	<generated>
	<MSEClass: #Entity super: #MooseEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FAMIXEntity class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXEntity class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FAMIXEntity class >> metamodel [

	<generated>
	^ FmxNGCompatibilityGenerator metamodel
]

{ #category : #meta }
FAMIXEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Moose-Query-Extensions' }
FAMIXEntity class >> resetMSEProperties [
	"
	self resetMSEProperties
		"

	self allSubclasses
		do: [ :aSubClass | 
			aSubClass resetMooseQueryCaches.]
]

{ #category : #'Moose-Query-Extensions' }
FAMIXEntity class >> resetMooseQueryCaches [
	"Here do nothing. Customize in subclasses."
]

{ #category : #accessing }
FAMIXEntity >> belongsTo [
	"Return the primary container of the entity if it exist"
	
	^ self subclassResponsibility
]

{ #category : #testing }
FAMIXEntity >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isAttribute [

	<generated>
	^ false
]

{ #category : #'testing - custom' }
FAMIXEntity >> isBehaviouralEntity [
	^ false
]

{ #category : #testing }
FAMIXEntity >> isClass [

	<generated>
	^ false
]

{ #category : #'testing - custom' }
FAMIXEntity >> isContainerEntity [
	^ false
]

{ #category : #testing }
FAMIXEntity >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isPackage [

	<generated>
	^ false
]

{ #category : #'testing - custom' }
FAMIXEntity >> isPrimitiveType [
	^ false
]

{ #category : #testing }
FAMIXEntity >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FAMIXEntity >> isType [

	<generated>
	^ false
]

Class {
	#name : #FmxNGStInheritance,
	#superclass : #FmxNGStAssociation,
	#traits : 'FmxNGTSubInheritance + FmxNGTSuperInheritance',
	#classTraits : 'FmxNGTSubInheritance classTrait + FmxNGTSuperInheritance classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStInheritance class >> annotation [

	<generated>
	<MSEClass: #Inheritance super: #FmxNGStAssociation>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStInheritance class >> generatedSlotNames [
	<generated>
	'FmxNGStInheritance class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStInheritance class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTSubInheritance FmxNGTSuperInheritance)
]

{ #category : #meta }
FmxNGStInheritance class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'instance creation' }
FmxNGStInheritance >> from [
	^ self subclass 
]

{ #category : #'instance creation' }
FmxNGStInheritance >> from: aSubclass [
	self subclass: aSubclass 
]

{ #category : #'instance creation' }
FmxNGStInheritance >> to [
	^ self superclass 
]

{ #category : #'instance creation' }
FmxNGStInheritance >> to: aSuperclass [
	self superclass: aSuperclass
]

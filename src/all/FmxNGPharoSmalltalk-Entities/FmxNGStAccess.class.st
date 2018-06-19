Class {
	#name : #FmxNGStAccess,
	#superclass : #FmxNGStAssociation,
	#traits : 'FmxNGTAccess',
	#classTraits : 'FmxNGTAccess classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStAccess class >> annotation [

	<generated>
	<MSEClass: #Access super: #FmxNGStAssociation>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStAccess class >> generatedSlotNames [
	<generated>
	'FmxNGStAccess class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStAccess class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAccess)
]

{ #category : #meta }
FmxNGStAccess class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'instance creation' }
FmxNGStAccess >> from [
	^ self accessor 
]

{ #category : #'instance creation' }
FmxNGStAccess >> from: anAccessor [
	self accessor: anAccessor 
]

{ #category : #'instance creation' }
FmxNGStAccess >> to [	
	^ self variable 
]

{ #category : #'instance creation' }
FmxNGStAccess >> to: aVariable [
	self variable: aVariable
]

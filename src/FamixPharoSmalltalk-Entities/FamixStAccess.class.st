Class {
	#name : #FamixStAccess,
	#superclass : #FamixStAssociation,
	#traits : 'FamixTAccess',
	#classTraits : 'FamixTAccess classTrait',
	#category : #'FamixPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FamixStAccess class >> annotation [

	<MSEClass: #Access super: #FamixStAssociation>
	<package: #'FamixPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixStAccess class >> generatedSlotNames [
	<generated>
	'FamixStAccess class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixStAccess class >> generatedTraitNames [
	<generated>
	^ #(FamixTAccess)
]

{ #category : #meta }
FamixStAccess class >> requirements [

	<generated>
	^ {  }
]

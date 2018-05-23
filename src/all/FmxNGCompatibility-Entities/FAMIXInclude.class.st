Class {
	#name : #FAMIXInclude,
	#superclass : #FAMIXAssociation,
	#traits : 'FmxNGTFileInclude',
	#classTraits : 'FmxNGTFileInclude classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXInclude class >> annotation [

	<generated>
	<MSEClass: #Include super: #FAMIXAssociation>
	<package: #'FmxNGCompatibility-EntitiesOld'>
	<generated>
	^self
]

{ #category : #generator }
FAMIXInclude class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXInclude class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTFileInclude)
]

{ #category : #meta }
FAMIXInclude class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FAMIXInclude >> from [	
	^ self source
]

{ #category : #accessing }
FAMIXInclude >> to [
	^ self target
]

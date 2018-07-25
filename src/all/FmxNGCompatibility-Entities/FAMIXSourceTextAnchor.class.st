Class {
	#name : #FAMIXSourceTextAnchor,
	#superclass : #FAMIXSourceAnchor,
	#traits : 'FmxNGTWithImmediateSource',
	#classTraits : 'FmxNGTWithImmediateSource classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXSourceTextAnchor class >> annotation [

	<MSEClass: #SourceTextAnchor super: #FAMIXSourceAnchor>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #generator }
FAMIXSourceTextAnchor class >> generatedSlotNames [
	<generated>
	'FAMIXSourceTextAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FAMIXSourceTextAnchor class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTWithImmediateSource)
]

{ #category : #meta }
FAMIXSourceTextAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-File' }
FAMIXSourceTextAnchor >> containerFiles [
	^ {}
]

{ #category : #accessing }
FAMIXSourceTextAnchor >> lineCount [
	^ self sourceText ifNotNil: #lineCount ifNil: [ self notExistentMetricValue ]
]

{ #category : #accessing }
FAMIXSourceTextAnchor >> sourceText [
	^ self source
]

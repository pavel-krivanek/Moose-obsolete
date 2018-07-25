Class {
	#name : #FmxNGStUnknownVariable,
	#superclass : #FmxNGStStructuralEntity,
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStUnknownVariable class >> annotation [

	<MSEClass: #UnknownVariable super: #FmxNGStStructuralEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStUnknownVariable class >> generatedSlotNames [
	<generated>
	'FmxNGStUnknownVariable class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStUnknownVariable class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGStUnknownVariable class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGStUnknownVariable >> typeScope [
	"typeScope does not make sense for an unknown variable,
	so we return nil"
	^ nil
]

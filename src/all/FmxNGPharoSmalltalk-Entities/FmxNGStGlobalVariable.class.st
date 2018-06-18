Class {
	#name : #FmxNGStGlobalVariable,
	#superclass : #FmxNGStStructuralEntity,
	#traits : 'FmxNGTDefinedInModule + FmxNGTGlobalVariable',
	#classTraits : 'FmxNGTDefinedInModule classTrait + FmxNGTGlobalVariable classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStGlobalVariable class >> annotation [

	<generated>
	<MSEClass: #GlobalVariable super: #FmxNGStStructuralEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStGlobalVariable class >> generatedSlotNames [
	<generated>
	'FmxNGStGlobalVariable class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStGlobalVariable class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTDefinedInModule FmxNGTGlobalVariable)
]

{ #category : #meta }
FmxNGStGlobalVariable class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGStGlobalVariable >> typeScope [
	"typeScope does not make sense for a global variable,
	so we return nil"

	^ nil
]

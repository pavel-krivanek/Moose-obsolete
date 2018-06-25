Class {
	#name : #FmxNGStGlobalVariable,
	#superclass : #FmxNGStStructuralEntity,
	#traits : 'FmxNGTGlobalVariable',
	#classTraits : 'FmxNGTGlobalVariable classTrait',
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
	^ #(FmxNGTGlobalVariable)
]

{ #category : #meta }
FmxNGStGlobalVariable class >> requirements [

	<generated>
	^ { FmxNGStScopingEntity }
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGStGlobalVariable >> packageScope [
	^ self parentPackage
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGStGlobalVariable >> typeScope [
	"typeScope does not make sense for a global variable,
	so we return nil"

	^ nil
]

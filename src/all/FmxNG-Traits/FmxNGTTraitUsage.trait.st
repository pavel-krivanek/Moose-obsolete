Trait {
	#name : #FmxNGTTraitUsage,
	#instVars : [
		'#trait => FMOne type: #FmxNGTTrait opposite: #incomingTraitUsages',
		'#user => FMOne type: #FmxNGTType opposite: #outgoingTraitUsages'
	],
	#category : #'FmxNG-Traits-Trait'
}

{ #category : #meta }
FmxNGTTraitUsage classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TTraitUsage super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTTraitUsage classSide >> generatedSlotNames [
	<generated>
	^ #(user trait)
]

{ #category : #generator }
FmxNGTTraitUsage classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTTraitUsage >> from [
	^ self user
]

{ #category : #accessing }
FmxNGTTraitUsage >> from: anObject [
	self user: anObject
]

{ #category : #accessing }
FmxNGTTraitUsage >> to [
	^ self trait
]

{ #category : #accessing }
FmxNGTTraitUsage >> to: anObject [
	self trait: anObject
]

{ #category : #accessing }
FmxNGTTraitUsage >> trait [

	<generated>
	<source>

	^ trait
]

{ #category : #accessing }
FmxNGTTraitUsage >> trait: anObject [

	<generated>
	trait := anObject

]

{ #category : #accessing }
FmxNGTTraitUsage >> user [

	<generated>
	<target>

	^ user
]

{ #category : #accessing }
FmxNGTTraitUsage >> user: anObject [

	<generated>
	user := anObject

]

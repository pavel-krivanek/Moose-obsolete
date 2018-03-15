Class {
	#name : #FmxNGTraitUsageGenerated,
	#superclass : #FmxNGAssociation,
	#instVars : [
		'#user => FMOne type: #FmxNGTType opposite: #outgoingTraitUsages',
		'#trait => FMOne type: #FmxNGTTrait opposite: #incomingTraitUsages'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGTraitUsageGenerated class >> annotation [

	<MSEClass: #TraitUsageGenerated super: #FmxNGAssociation>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGTraitUsageGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGTraitUsageGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTTraitUsage}
]

{ #category : #'_fromTrait_FmxNGTTraitUsage' }
FmxNGTraitUsageGenerated >> from [
	^ self user
]

{ #category : #'_fromTrait_FmxNGTTraitUsage' }
FmxNGTraitUsageGenerated >> from: anObject [
	self user: anObject
]

{ #category : #'_fromTrait_FmxNGTTraitUsage' }
FmxNGTraitUsageGenerated >> to [
	^ self trait
]

{ #category : #'_fromTrait_FmxNGTTraitUsage' }
FmxNGTraitUsageGenerated >> to: anObject [
	self trait: anObject
]

{ #category : #'_fromTrait_FmxNGTTraitUsageGenerated' }
FmxNGTraitUsageGenerated >> trait [

	<source>

	^ trait
]

{ #category : #'_fromTrait_FmxNGTTraitUsageGenerated' }
FmxNGTraitUsageGenerated >> trait: anObject [

	trait := anObject

]

{ #category : #'_fromTrait_FmxNGTTraitUsageGenerated' }
FmxNGTraitUsageGenerated >> user [

	<target>

	^ user
]

{ #category : #'_fromTrait_FmxNGTTraitUsageGenerated' }
FmxNGTraitUsageGenerated >> user: anObject [

	user := anObject

]

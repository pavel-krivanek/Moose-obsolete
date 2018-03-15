Class {
	#name : #FmxNGTTraitUsageGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#user => FMOne type: #FmxNGTType opposite: #outgoingTraitUsages',
		'#trait => FMOne type: #FmxNGTTrait opposite: #incomingTraitUsages'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTTraitUsageGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TTraitUsageGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTTraitUsageGenerated >> trait [

	<source>

	^ trait
]

{ #category : #accessing }
FmxNGTTraitUsageGenerated >> trait: anObject [

	trait := anObject

]

{ #category : #accessing }
FmxNGTTraitUsageGenerated >> user [

	<target>

	^ user
]

{ #category : #accessing }
FmxNGTTraitUsageGenerated >> user: anObject [

	user := anObject

]

Class {
	#name : #FmxNGTInvocableGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#incomingInvocations => FMOne type: #FmxNGTInvocation opposite: #candidates'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTInvocableGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TInvocableGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTInvocableGenerated >> incomingInvocations [

	^ incomingInvocations
]

{ #category : #accessing }
FmxNGTInvocableGenerated >> incomingInvocations: anObject [

	incomingInvocations := anObject

]

Class {
	#name : #FmxNGTAccess,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#accessor => FMOne type: #FmxNGTWithAccesses opposite: #accesses',
		'#isWrite',
		'#variable => FMOne type: #FmxNGTAccessible opposite: #incomingAccesses'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTAccess class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TAccess super: #FmxNGTAccessGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTAccess >> isWrite [

	<MSEProperty: #isWrite type: #Boolean>
	<MSEComment: 'Write access'>
	^ isWrite ifNil: [ false ]
]

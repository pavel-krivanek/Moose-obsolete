Class {
	#name : #FmxNGTTraitUsage,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#trait => FMOne type: #FmxNGTTrait opposite: #incomingTraitUsages',
		'#user => FMOne type: #FmxNGTType opposite: #outgoingTraitUsages'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTTraitUsage class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TTraitUsage super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #'instance creation' }
FmxNGTTraitUsage >> from [
	^ self user
]

{ #category : #'instance creation' }
FmxNGTTraitUsage >> from: anObject [
	self user: anObject
]

{ #category : #'instance creation' }
FmxNGTTraitUsage >> to [
	^ self trait
]

{ #category : #'instance creation' }
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

Class {
	#name : #FmxNGTMethod,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#category',
		'#parentType => FMOne type: #FmxNGTWithMethods opposite: #methods',
		'#hasClassScope',
		'#isPublic',
		'#timeStamp',
		'#kind',
		'#isAbstract'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTMethod class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TMethod super: #FmxNGTMethodGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #testing }
FmxNGTMethod >> parentTypeIsStub [
	^ self parentType ifNotNil: [ :e | e isStub ] ifNil: [ true ]
]

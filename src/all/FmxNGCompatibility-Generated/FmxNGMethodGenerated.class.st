Class {
	#name : #FmxNGMethodGenerated,
	#superclass : #FmxNGBehaviouralEntity,
	#instVars : [
		'#category',
		'#parentType => FMOne type: #FmxNGTWithMethods opposite: #methods',
		'#hasClassScope',
		'#isPublic',
		'#timeStamp',
		'#kind',
		'#isAbstract',
		'#caughtExceptions => FMMany type: #FmxNGTCaughtException opposite: #definingEntity',
		'#declaredExceptions => FMMany type: #FmxNGTDeclaredException opposite: #definingEntity',
		'#thrownExceptions => FMMany type: #FmxNGTThrownException opposite: #definingEntity'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGMethodGenerated class >> annotation [

	<MSEClass: #MethodGenerated super: #FmxNGBehaviouralEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGMethodGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGMethodGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTMethod. FmxNGTWithCaughtExceptions. FmxNGTWithClassScope. FmxNGTWithDeclaredExceptions. FmxNGTWithThrownExceptions}
]

{ #category : #'_fromTrait_FmxNGTMethod' }
FmxNGMethodGenerated >> parentTypeIsStub [
	^ self parentType ifNotNil: [ :e | e isStub ] ifNil: [ true ]
]

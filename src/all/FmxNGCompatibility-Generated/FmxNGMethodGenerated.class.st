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
		'#thrownExceptions => FMMany type: #FmxNGTThrownException opposite: #definingEntity',
		'#declaredExceptions => FMMany type: #FmxNGTDeclaredException opposite: #definingEntity'
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

{ #category : #'_fromTrait_FmxNGTMethodGenerated' }
FmxNGMethodGenerated >> category [

	<MSEProperty: #category type: #String>
	<MSEComment: 'Category of the method'>
	^ category
]

{ #category : #'_fromTrait_FmxNGTMethodGenerated' }
FmxNGMethodGenerated >> category: anObject [

	category := anObject

]

{ #category : #'_fromTrait_FmxNGTWithCaughtExceptionsGenerated' }
FmxNGMethodGenerated >> caughtExceptions [

	^ caughtExceptions
]

{ #category : #'_fromTrait_FmxNGTWithCaughtExceptionsGenerated' }
FmxNGMethodGenerated >> caughtExceptions: anObject [

	caughtExceptions value: anObject

]

{ #category : #'_fromTrait_FmxNGTWithDeclaredExceptionsGenerated' }
FmxNGMethodGenerated >> declaredExceptions [

	^ declaredExceptions
]

{ #category : #'_fromTrait_FmxNGTWithDeclaredExceptionsGenerated' }
FmxNGMethodGenerated >> declaredExceptions: anObject [

	declaredExceptions value: anObject

]

{ #category : #'_fromTrait_FmxNGTMethodGenerated' }
FmxNGMethodGenerated >> hasClassScope [

	<MSEProperty: #hasClassScope type: #Boolean>
	<MSEComment: 'True if class-side method'>
	^ hasClassScope
]

{ #category : #'_fromTrait_FmxNGTMethodGenerated' }
FmxNGMethodGenerated >> hasClassScope: anObject [

	hasClassScope := anObject

]

{ #category : #'_fromTrait_FmxNGTMethodGenerated' }
FmxNGMethodGenerated >> isAbstract [

	<MSEProperty: #isAbstract type: #Boolean>
	^ isAbstract
]

{ #category : #'_fromTrait_FmxNGTMethodGenerated' }
FmxNGMethodGenerated >> isAbstract: anObject [

	isAbstract := anObject

]

{ #category : #'_fromTrait_FmxNGTMethodGenerated' }
FmxNGMethodGenerated >> isPublic [

	<MSEProperty: #isPublic type: #Boolean>
	^ isPublic
]

{ #category : #'_fromTrait_FmxNGTMethodGenerated' }
FmxNGMethodGenerated >> isPublic: anObject [

	isPublic := anObject

]

{ #category : #'_fromTrait_FmxNGTMethodGenerated' }
FmxNGMethodGenerated >> kind [

	<MSEProperty: #kind type: #String>
	<MSEComment: 'Tag indicating a setter, getter, constant, constructor, or abstract method'>
	^ kind
]

{ #category : #'_fromTrait_FmxNGTMethodGenerated' }
FmxNGMethodGenerated >> kind: anObject [

	kind := anObject

]

{ #category : #'_fromTrait_FmxNGTMethodGenerated' }
FmxNGMethodGenerated >> parentType [

	<MSEComment: 'Type declaring the method. It provides the implementation for belongsTo.'>
	<container>

	^ parentType
]

{ #category : #'_fromTrait_FmxNGTMethodGenerated' }
FmxNGMethodGenerated >> parentType: anObject [

	parentType := anObject

]

{ #category : #'_fromTrait_FmxNGTMethod' }
FmxNGMethodGenerated >> parentTypeIsStub [
	^ self parentType ifNotNil: [ :e | e isStub ] ifNil: [ true ]
]

{ #category : #'_fromTrait_FmxNGTWithThrownExceptionsGenerated' }
FmxNGMethodGenerated >> thrownExceptions [

	^ thrownExceptions
]

{ #category : #'_fromTrait_FmxNGTWithThrownExceptionsGenerated' }
FmxNGMethodGenerated >> thrownExceptions: anObject [

	thrownExceptions value: anObject

]

{ #category : #'_fromTrait_FmxNGTMethodGenerated' }
FmxNGMethodGenerated >> timeStamp [

	<MSEProperty: #timeStamp type: #String>
	<MSEComment: 'TimeStamp of the method with author and time of the last change'>
	^ timeStamp
]

{ #category : #'_fromTrait_FmxNGTMethodGenerated' }
FmxNGMethodGenerated >> timeStamp: anObject [

	timeStamp := anObject

]

"
FAMIXMethod represents a behaviour in an object-oriented language.

A FAMIXMethod is always contained in a parentType.
"
Class {
	#name : #FmxNGTMethodGenerated,
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
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTMethodGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TMethod super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTMethodGenerated >> category [

	<MSEProperty: #category type: #String>
	<MSEComment: 'Category of the method'>
	^ category
]

{ #category : #accessing }
FmxNGTMethodGenerated >> category: anObject [

	category := anObject

]

{ #category : #accessing }
FmxNGTMethodGenerated >> hasClassScope [

	<MSEProperty: #hasClassScope type: #Boolean>
	<MSEComment: 'True if class-side method'>
	^ hasClassScope
]

{ #category : #accessing }
FmxNGTMethodGenerated >> hasClassScope: anObject [

	hasClassScope := anObject

]

{ #category : #accessing }
FmxNGTMethodGenerated >> isAbstract [

	<MSEProperty: #isAbstract type: #Boolean>
	^ isAbstract
]

{ #category : #accessing }
FmxNGTMethodGenerated >> isAbstract: anObject [

	isAbstract := anObject

]

{ #category : #accessing }
FmxNGTMethodGenerated >> isPublic [

	<MSEProperty: #isPublic type: #Boolean>
	^ isPublic
]

{ #category : #accessing }
FmxNGTMethodGenerated >> isPublic: anObject [

	isPublic := anObject

]

{ #category : #accessing }
FmxNGTMethodGenerated >> kind [

	<MSEProperty: #kind type: #String>
	<MSEComment: 'Tag indicating a setter, getter, constant, constructor, or abstract method'>
	^ kind
]

{ #category : #accessing }
FmxNGTMethodGenerated >> kind: anObject [

	kind := anObject

]

{ #category : #accessing }
FmxNGTMethodGenerated >> parentType [

	<MSEComment: 'Type declaring the method. It provides the implementation for belongsTo.'>
	<container>

	^ parentType
]

{ #category : #accessing }
FmxNGTMethodGenerated >> parentType: anObject [

	parentType := anObject

]

{ #category : #accessing }
FmxNGTMethodGenerated >> timeStamp [

	<MSEProperty: #timeStamp type: #String>
	<MSEComment: 'TimeStamp of the method with author and time of the last change'>
	^ timeStamp
]

{ #category : #accessing }
FmxNGTMethodGenerated >> timeStamp: anObject [

	timeStamp := anObject

]

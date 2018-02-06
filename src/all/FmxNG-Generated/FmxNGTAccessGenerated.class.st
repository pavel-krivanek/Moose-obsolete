"
FAMIXAccess represents an access to a variable by a behavioural entity (for example, a function or a method). 

For example if the method foo accesses the instance variable x, there is an access with the following information:
	(i) From: aFAMIXMethod (foo)
	(ii) To: aFAMIXAttribute (x)
	
aFAMIXMethod (foo) can be accessed using the message accessor (and from)
aFAMIXAttribute (x) can be accessed using the message variable (and to). 

Furthermore it can be tagged as read or write using isWrite: aBoolean.

For each access in the source code, there is one famix access created even if it is from the same behavioral entity towards the same variable.
"
Class {
	#name : #FmxNGTAccessGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#accessor => FMOne type: #FmxNGTWithAccesses opposite: #accesses',
		'#isWrite',
		'#variable => FMOne type: #FmxNGTAccessible opposite: #incomingAccesses'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTAccessGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TAccess super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTAccessGenerated >> accessor [

	<MSEComment: 'Behavioural entity making the access to the variable. from-side of the association'>
	<source>

	^ accessor
]

{ #category : #accessing }
FmxNGTAccessGenerated >> accessor: anObject [

	accessor := anObject

]

{ #category : #accessing }
FmxNGTAccessGenerated >> isWrite [

	<MSEProperty: #isWrite type: #Boolean>
	<MSEComment: 'Write access'>
	^ isWrite
]

{ #category : #accessing }
FmxNGTAccessGenerated >> isWrite: anObject [

	isWrite := anObject

]

{ #category : #accessing }
FmxNGTAccessGenerated >> variable [

	<MSEComment: 'Variable accessed. to-side of the association'>
	<target>

	^ variable
]

{ #category : #accessing }
FmxNGTAccessGenerated >> variable: anObject [

	variable := anObject

]

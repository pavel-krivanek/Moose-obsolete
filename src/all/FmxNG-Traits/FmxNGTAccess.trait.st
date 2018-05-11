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
Trait {
	#name : #FmxNGTAccess,
	#instVars : [
		'#accessor => FMOne type: #FmxNGTWithAccesses opposite: #accesses',
		'#isWrite',
		'#mySlot',
		'#variable => FMOne type: #FmxNGTAccessible opposite: #incomingAccesses'
	],
	#category : #'FmxNG-Traits-Access'
}

{ #category : #meta }
FmxNGTAccess classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TAccess super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTAccess classSide >> generatedSlotNames [
	<generated>
	^ #(accessor isWrite variable)
]

{ #category : #generator }
FmxNGTAccess classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTAccess >> accessor [

	<generated>
	<MSEComment: 'Behavioural entity making the access to the variable. from-side of the association'>
	<source>

	^ accessor
]

{ #category : #accessing }
FmxNGTAccess >> accessor: anObject [

	<generated>
	accessor := anObject

]

{ #category : #accessing }
FmxNGTAccess >> isWrite [

	^ super isWrite ifNil: [ false ]
]

{ #category : #accessing }
FmxNGTAccess >> isWrite: anObject [

	<generated>
	isWrite := anObject

]

{ #category : #accessing }
FmxNGTAccess >> variable [

	<generated>
	<MSEComment: 'Variable accessed. to-side of the association'>
	<target>

	^ variable
]

{ #category : #accessing }
FmxNGTAccess >> variable: anObject [

	<generated>
	variable := anObject

]

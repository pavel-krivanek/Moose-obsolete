"
This is the abstract representation of an Exception. It is specific to Java. It points to an exceptionClass. The class of a FAMIXException is a normal FAMIXClass.
"
Trait {
	#name : #FmxNGTException,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTException classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TException super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTException classSide >> generatedSlotNames [
	<generated>
	^ #(exceptionClass)
]

{ #category : #generator }
FmxNGTException classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTException >> exceptionClass [

	<generated>
	<MSEComment: 'Class to which the exception points. It is specific to Java'>
	^ exceptionClass
]

{ #category : #accessing }
FmxNGTException >> exceptionClass: anObject [

	<generated>
	exceptionClass := anObject

]

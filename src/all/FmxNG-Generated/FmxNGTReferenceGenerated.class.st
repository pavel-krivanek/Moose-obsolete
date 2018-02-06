"
A FAMIXReference entity is created whenever one manipulates a class name as a variable. For example:
(i) if the class is passed as a parameter to a method, or
(ii) if a static method is invoked on a class.

For example, in the following Java code
method a()
{B bObject = new B();  B.aStaticMethod(); }
There is only one reference which is created when the static method aStaticMethod is invoked on class variable B. In the declaration of B objects, the class B is the type of variable b but not a FAMIXReference. And instantiation new B() is an invocation of the default constructor, and not a FAMIXReference.


Note that FAMIXReference was defined between two FAMIXContainerEntity entities. So, it used to represent dependencies between container entities that are computed from the dependencies of contained entities. For example, references between two packages can be computed from dependencies between classes of the packages.
"
Class {
	#name : #FmxNGTReferenceGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#target => FMOne type: #FmxNGTReferenceable opposite: #incomingReferences',
		'#source => FMOne type: #FmxNGTWithReferences opposite: #outgoingReferences'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTReferenceGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TReference super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTReferenceGenerated >> source [

	<MSEComment: 'Source entity making the reference. from-side of the association'>
	<source>

	^ source
]

{ #category : #accessing }
FmxNGTReferenceGenerated >> source: anObject [

	source := anObject

]

{ #category : #accessing }
FmxNGTReferenceGenerated >> target [

	<MSEComment: 'Target entity referenced. to-side of the association'>
	<target>

	^ target
]

{ #category : #accessing }
FmxNGTReferenceGenerated >> target: anObject [

	target := anObject

]

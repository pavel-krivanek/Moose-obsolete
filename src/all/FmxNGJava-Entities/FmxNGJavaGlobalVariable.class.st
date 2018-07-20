Class {
	#name : #FmxNGJavaGlobalVariable,
	#superclass : #FmxNGJavaStructuralEntity,
	#traits : 'FmxNGTGlobalVariable',
	#classTraits : 'FmxNGTGlobalVariable classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaGlobalVariable class >> annotation [

	<generated>
	<MSEClass: #GlobalVariable super: #FmxNGJavaStructuralEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaGlobalVariable class >> generatedSlotNames [
	<generated>
	'FmxNGJavaGlobalVariable class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaGlobalVariable class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTGlobalVariable)
]

{ #category : #meta }
FmxNGJavaGlobalVariable class >> requirements [

	<generated>
	^ { FmxNGJavaScopingEntity }
]

{ #category : #'as yet unclassified' }
FmxNGJavaGlobalVariable >> accept: aVisitor [

	aVisitor visitGlobalVariable: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaGlobalVariable >> belongsTo [

	^ self parentScope
]

{ #category : #'as yet unclassified' }
FmxNGJavaGlobalVariable >> isPrivate [
	^ self isPublic not
]

{ #category : #'as yet unclassified' }
FmxNGJavaGlobalVariable >> isPublic [
	"checker whether I am called outside the module in which I am defined"
	^ self incomingAccesses anySatisfy: [:inv |
			inv accessor parentScope ~~ self parentScope]
]

{ #category : #'as yet unclassified' }
FmxNGJavaGlobalVariable >> namespaceScope [
	^ self parentScope
]

{ #category : #'as yet unclassified' }
FmxNGJavaGlobalVariable >> packageScope [
	^ self parentPackage
]

{ #category : #'as yet unclassified' }
FmxNGJavaGlobalVariable >> printOn: aStream [ 
	| parent |
	parent := self belongsTo.
	parent ifNotNil:
		[ aStream nextPutAll: parent name.
		aStream nextPut: $. ].
	self name ifNotNil: [ aStream nextPutAll: self name ].
	aStream nextPutAll: ' (Global Variable)'
]

{ #category : #'as yet unclassified' }
FmxNGJavaGlobalVariable >> typeScope [
	"typeScope does not make sense for a global variable,
	so we return nil"

	^ nil
]

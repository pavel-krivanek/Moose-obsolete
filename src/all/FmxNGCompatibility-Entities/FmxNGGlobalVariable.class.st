Class {
	#name : #FmxNGGlobalVariable,
	#superclass : #FmxNGStructuralEntity,
	#traits : 'FmxNGTDefinedInModule + FmxNGTGlobalVariable',
	#classTraits : 'FmxNGTDefinedInModule classTrait + FmxNGTGlobalVariable classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGGlobalVariable class >> annotation [

	<generated>
	<MSEClass: #GlobalVariable super: #FmxNGStructuralEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGGlobalVariable class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGGlobalVariable class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTDefinedInModule FmxNGTGlobalVariable)
]

{ #category : #meta }
FmxNGGlobalVariable class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Extensions' }
FmxNGGlobalVariable >> accept: aVisitor [

	aVisitor visitGlobalVariable: self
]

{ #category : #accessing }
FmxNGGlobalVariable >> belongsTo [

	^ self parentScope
]

{ #category : #'Famix-Extensions' }
FmxNGGlobalVariable >> isPrivate [
	^ self isPublic not
]

{ #category : #'Famix-Extensions' }
FmxNGGlobalVariable >> isPublic [
	"checker whether I am called outside the module in which I am defined"
	^ self incomingAccesses anySatisfy: [:inv |
			inv accessor parentScope ~~ self parentScope]
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGGlobalVariable >> namespaceScope [
	^ self parentScope
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGGlobalVariable >> packageScope [
	^ self parentPackage
]

{ #category : #'Famix-Implementation' }
FmxNGGlobalVariable >> printOn: aStream [ 
	| parent |
	parent := self belongsTo.
	parent ifNotNil:
		[ aStream nextPutAll: parent name.
		aStream nextPut: $. ].
	self name ifNotNil: [ aStream nextPutAll: self name ].
	aStream nextPutAll: ' (Global Variable)'
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGGlobalVariable >> typeScope [
	"typeScope does not make sense for a global variable,
	so we return nil"

	^ nil
]

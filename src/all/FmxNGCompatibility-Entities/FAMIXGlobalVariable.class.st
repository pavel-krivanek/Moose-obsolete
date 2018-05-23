Class {
	#name : #FAMIXGlobalVariable,
	#superclass : #FAMIXStructuralEntity,
	#traits : 'FmxNGTDefinedInModule + FmxNGTGlobalVariable',
	#classTraits : 'FmxNGTDefinedInModule classTrait + FmxNGTGlobalVariable classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXGlobalVariable class >> annotation [

	<generated>
	<MSEClass: #GlobalVariable super: #FAMIXStructuralEntity>
	<package: #'FmxNGCompatibility-EntitiesOld'>
	<generated>
	^self
]

{ #category : #generator }
FAMIXGlobalVariable class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXGlobalVariable class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTDefinedInModule FmxNGTGlobalVariable)
]

{ #category : #meta }
FAMIXGlobalVariable class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Extensions' }
FAMIXGlobalVariable >> accept: aVisitor [

	aVisitor visitGlobalVariable: self
]

{ #category : #accessing }
FAMIXGlobalVariable >> belongsTo [

	^ self parentScope
]

{ #category : #'Famix-Extensions' }
FAMIXGlobalVariable >> isPrivate [
	^ self isPublic not
]

{ #category : #'Famix-Extensions' }
FAMIXGlobalVariable >> isPublic [
	"checker whether I am called outside the module in which I am defined"
	^ self incomingAccesses anySatisfy: [:inv |
			inv accessor parentScope ~~ self parentScope]
]

{ #category : #'moosechef-scoping-filtering' }
FAMIXGlobalVariable >> namespaceScope [
	^ self parentScope
]

{ #category : #'moosechef-scoping-filtering' }
FAMIXGlobalVariable >> packageScope [
	^ self parentPackage
]

{ #category : #'Famix-Implementation' }
FAMIXGlobalVariable >> printOn: aStream [ 
	| parent |
	parent := self belongsTo.
	parent ifNotNil:
		[ aStream nextPutAll: parent name.
		aStream nextPut: $. ].
	self name ifNotNil: [ aStream nextPutAll: self name ].
	aStream nextPutAll: ' (Global Variable)'
]

{ #category : #'moosechef-scoping-filtering' }
FAMIXGlobalVariable >> typeScope [
	"typeScope does not make sense for a global variable,
	so we return nil"

	^ nil
]

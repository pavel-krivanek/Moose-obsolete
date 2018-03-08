Class {
	#name : #FmxNGGlobalVariable,
	#superclass : #FmxNGGlobalVariableGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGGlobalVariable class >> annotation [

	<MSEClass: #GlobalVariable super: #FmxNGGlobalVariableGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
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

{ #category : #'Famix-C' }
FmxNGGlobalVariable >> parentModule [
	<MSEProperty: #parentModule type: #FmxNGModule>
	<MSEComment: 'Module (typically a file) defining the global variable.'>
	^ self privateState 		
		attributeAt: #parentModule
		ifAbsentPut: [ nil ]
]

{ #category : #'Famix-C' }
FmxNGGlobalVariable >> parentModule: aModule [
	^ self privateState 		
		attributeAt: #parentModule
		put: (FMMultivalueLink 
				on: self
				update: #globalVariables
				from: self parentModule
				to: aModule)
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

Class {
	#name : #FmxNGFunction,
	#superclass : #FmxNGFunctionGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGFunction class >> annotation [

	<MSEClass: #Function super: #FmxNGFunctionGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #accessing }
FmxNGFunction >> belongsTo [	
	
	^ self functionOwner
]

{ #category : #'Famix-Implementation' }
FmxNGFunction >> isFunction [
	^true.
]

{ #category : #testing }
FmxNGFunction >> isPrivate [
	^ self isPublic not
]

{ #category : #testing }
FmxNGFunction >> isPublic [
	"checker whether I am called outside the module in which I am defined"
	^ self receivingInvocations anySatisfy: [:inv |
			inv sender container ~~ self container]
]

{ #category : #'Moose-Finder' }
FmxNGFunction >> mooseIcon [ 
	^ MooseIcons famixFunction
]

{ #category : #'Famix-Implementation' }
FmxNGFunction >> mooseNameOn: stream [ 
	| parent |
	parent := self container.
	parent ifNotNil: 
		[ parent mooseNameOn: stream.
		stream nextPut: $. ].
	self signature
		ifNotNil: [ stream nextPutAll: self signature ]
		ifNil: [ self name ifNotNil: [ stream nextPutAll: self name] ]
]

{ #category : #testing }
FmxNGFunction >> packageScope [
	"No package scope for functions"

	^ nil
]

{ #category : #accessing }
FmxNGFunction >> parentScope [
	^ self functionOwner
]

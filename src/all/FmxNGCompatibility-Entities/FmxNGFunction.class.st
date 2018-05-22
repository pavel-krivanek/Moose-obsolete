Class {
	#name : #FmxNGFunction,
	#superclass : #FmxNGBehaviouralEntity,
	#traits : 'FmxNGTDefinedInModule + FmxNGTFunction',
	#classTraits : 'FmxNGTDefinedInModule classTrait + FmxNGTFunction classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGFunction class >> annotation [

	<generated>
	<MSEClass: #Function super: #FmxNGBehaviouralEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGFunction class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGFunction class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTDefinedInModule FmxNGTFunction)
]

{ #category : #meta }
FmxNGFunction class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxNGFunction >> belongsTo [	
	
	^ self functionOwner
]

{ #category : #accessing }
FmxNGFunction >> container [
	^ self functionOwner
]

{ #category : #accessing }
FmxNGFunction >> container: anObject [
	^ self functionOwner: anObject
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

{ #category : #'moose-chef-scoping-filtering' }
FmxNGFunction >> namespaceScope [
	^ self container 
		ifNotNil: [ self container namespaceScope ]
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

{ #category : #accessing }
FmxNGFunction >> parentScope: aScopingEntity [ 
	self deprecated: 'Please use container: instead of parentScope:'.
	self container: aScopingEntity
]

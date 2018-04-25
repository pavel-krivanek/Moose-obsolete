Class {
	#name : #FmxNGFunction,
	#superclass : #FmxNGBehaviouralEntity,
	#traits : 'FmxNGTFunction',
	#classTraits : 'FmxNGTFunction classTrait',
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
	^ #(FmxNGTFunction)
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

{ #category : #'moosechef-scoping-filtering' }
FmxNGFunction >> namespaceScope [
	^ self container 
		ifNotNil: [ self container namespaceScope ]
]

{ #category : #testing }
FmxNGFunction >> packageScope [
	"No package scope for functions"

	^ nil
]

{ #category : #'Famix-C' }
FmxNGFunction >> parentModule [
	<MSEProperty: #parentModule type: #FmxNGModule>
	<MSEComment: 'Module (typically a file) defining the function.'>
	^ self privateState 		
		attributeAt: #parentModule
		ifAbsentPut: [ nil ]
]

{ #category : #'Famix-C' }
FmxNGFunction >> parentModule: aModule [
	^ self privateState 		
		attributeAt: #parentModule
		put: (
			FMMultivalueLink 
				on: self
				update: #functions
				from: self parentModule
				to: aModule
			 )
]

{ #category : #accessing }
FmxNGFunction >> parentScope [
	^ self functionOwner
]

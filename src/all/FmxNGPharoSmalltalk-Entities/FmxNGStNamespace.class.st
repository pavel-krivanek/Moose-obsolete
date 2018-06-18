Class {
	#name : #FmxNGStNamespace,
	#superclass : #FmxNGStScopingEntity,
	#traits : 'FmxNGTNamespace',
	#classTraits : 'FmxNGTNamespace classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStNamespace class >> annotation [

	<generated>
	<MSEClass: #Namespace super: #FmxNGStScopingEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStNamespace class >> generatedSlotNames [
	<generated>
	'FmxNGStNamespace class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStNamespace class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTNamespace)
]

{ #category : #meta }
FmxNGStNamespace class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FmxNGStNamespace >> clientNamespaces [
	"MooseCook was: ^ self inheritedByNamespaces union: self invokingNamespaces"

	^ (self queryAllIncoming atScope: FmxNGTNamespace) withoutSelfLoops
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FmxNGStNamespace >> clientTypes [
	<MSEProperty: #clientTypes type: #FAMIXType>
	<multivalued>
	<derived>
	<MSEComment: 'All types that depend on the receiver'>
	^ (self queryAllIncoming atScope: FmxNGTType) withoutSelfLoops
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FmxNGStNamespace >> isNamespace [
	^ true
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FmxNGStNamespace >> mooseNameOn: aStream [ 
	| parent |
	parent := self belongsTo.
	parent ifNotNil: 
		[ parent mooseNameOn: aStream.
		aStream
			nextPut: $:;
			nextPut: $: ].
	self name ifNotNil: [aStream nextPutAll: self name]
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FmxNGStNamespace >> namespaceScope [

	^ self 
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FmxNGStNamespace >> packageScope [

	self shouldNotImplement
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FmxNGStNamespace >> providerNamespaces [
	"MooseCook was: ^ self inheritedNamespaces union: self invokedNamespaces"

	^ (self queryAllOutgoing atScope: FmxNGTNamespace) withoutSelfLoops
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FmxNGStNamespace >> providerTypes [
	<MSEProperty: #providerTypes type: #FAMIXType>
	<derived>
	<multivalued>
	<MSEComment: 'All types that the receiver depends on'>
	^ (self queryAllOutgoing atScope: FmxNGTType) withoutSelfLoops
]

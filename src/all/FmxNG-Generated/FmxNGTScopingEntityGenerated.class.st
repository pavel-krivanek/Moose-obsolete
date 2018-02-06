"
FAMIXScopingEntity represents an entity defining a scope at a global level. 

Packages and Namespaces are two different concept in terms of scoping entity. Namespaces have semantic meaning in the language so they influence the unique name of the entity, while Packages are physical entities for packaging. In Smalltalk the two are explicitly different. In C++ we have explicit Namespaces, but not so explicit Packages. In Java, we have both Namespace (what you define in your Java source), and Package (the folder structure), but they happen to overlap in naming (although one is with . and the other one is with /) so people tend to see them as packages only.
"
Class {
	#name : #FmxNGTScopingEntityGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentScope => FMOne type: #FmxNGTScopingEntity opposite: #childScopes',
		'#childScopes => FMMany type: #FmxNGTScopingEntity opposite: #parentScope'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTScopingEntityGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TScopingEntity super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTScopingEntityGenerated >> childScopes [

	<MSEComment: 'Child scopes embedded in this scope, if any.'>
	^ childScopes
]

{ #category : #accessing }
FmxNGTScopingEntityGenerated >> childScopes: anObject [

	childScopes value: anObject

]

{ #category : #accessing }
FmxNGTScopingEntityGenerated >> parentScope [

	<MSEComment: 'Parent scope embedding this scope, if any.'>
	<container>

	^ parentScope
]

{ #category : #accessing }
FmxNGTScopingEntityGenerated >> parentScope: anObject [

	parentScope := anObject

]

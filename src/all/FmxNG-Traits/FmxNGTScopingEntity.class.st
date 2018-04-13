"
FAMIXScopingEntity represents an entity defining a scope at a global level. 

Packages and Namespaces are two different concept in terms of scoping entity. Namespaces have semantic meaning in the language so they influence the unique name of the entity, while Packages are physical entities for packaging. In Smalltalk the two are explicitly different. In C++ we have explicit Namespaces, but not so explicit Packages. In Java, we have both Namespace (what you define in your Java source), and Package (the folder structure), but they happen to overlap in naming (although one is with . and the other one is with /) so people tend to see them as packages only.
"
Class {
	#name : #FmxNGTScopingEntity,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#childScopes => FMMany type: #FmxNGTScopingEntity opposite: #parentScope',
		'#parentScope => FMOne type: #FmxNGTScopingEntity opposite: #childScopes'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTScopingEntity class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TScopingEntity super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTScopingEntity >> childScopes [

	<generated>
	<MSEComment: 'Child scopes embedded in this scope, if any.'>
	^ childScopes
]

{ #category : #accessing }
FmxNGTScopingEntity >> childScopes: anObject [

	<generated>
	childScopes value: anObject

]

{ #category : #accessing }
FmxNGTScopingEntity >> parentScope [

	<generated>
	<MSEComment: 'Parent scope embedding this scope, if any.'>
	<container>

	^ parentScope
]

{ #category : #accessing }
FmxNGTScopingEntity >> parentScope: anObject [

	<generated>
	parentScope := anObject

]

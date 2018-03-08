Class {
	#name : #FmxNGScopingEntityGenerated,
	#superclass : #FmxNGContainerEntity,
	#instVars : [
		'#parentScope => FMOne type: #FmxNGTScopingEntity opposite: #childScopes',
		'#childScopes => FMMany type: #FmxNGTScopingEntity opposite: #parentScope',
		'#globalVariables => FMMany type: #FmxNGTGlobalVariable opposite: #parentScope'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGScopingEntityGenerated class >> annotation [

	<MSEClass: #ScopingEntityGenerated super: #FmxNGContainerEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGScopingEntityGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGScopingEntityGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTGlobalVariableScope. FmxNGTScopingEntity}
]

{ #category : #'_fromTrait_FmxNGTScopingEntityGenerated' }
FmxNGScopingEntityGenerated >> childScopes [

	<MSEComment: 'Child scopes embedded in this scope, if any.'>
	^ childScopes
]

{ #category : #'_fromTrait_FmxNGTScopingEntityGenerated' }
FmxNGScopingEntityGenerated >> childScopes: anObject [

	childScopes value: anObject

]

{ #category : #'_fromTrait_FmxNGTGlobalVariableScopeGenerated' }
FmxNGScopingEntityGenerated >> globalVariables [

	<MSEComment: 'Global variables defined in the scope, if any.'>
	^ globalVariables
]

{ #category : #'_fromTrait_FmxNGTGlobalVariableScopeGenerated' }
FmxNGScopingEntityGenerated >> globalVariables: anObject [

	globalVariables value: anObject

]

{ #category : #'_fromTrait_FmxNGTScopingEntityGenerated' }
FmxNGScopingEntityGenerated >> parentScope [

	<MSEComment: 'Parent scope embedding this scope, if any.'>
	<container>

	^ parentScope
]

{ #category : #'_fromTrait_FmxNGTScopingEntityGenerated' }
FmxNGScopingEntityGenerated >> parentScope: anObject [

	parentScope := anObject

]

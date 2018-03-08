Class {
	#name : #FmxNGScopingEntityGenerated,
	#superclass : #FmxNGContainerEntity,
	#instVars : [
		'#globalVariables => FMMany type: #FmxNGTGlobalVariable opposite: #parentScope',
		'#parentScope => FMOne type: #FmxNGTScopingEntity opposite: #childScopes',
		'#childScopes => FMMany type: #FmxNGTScopingEntity opposite: #parentScope'
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

"
FAMIXImplicitVariable represents a variable defined by the compiler in a context, such as self, super, thisContext.
"
Class {
	#name : #FmxNGTImplicitVariableGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentBehaviouralEntity => FMOne type: #FmxNGTWithImplicitVariables opposite: #implicitVariables'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTImplicitVariableGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TImplicitVariable super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTImplicitVariableGenerated >> parentBehaviouralEntity [

	<MSEComment: 'The behaviour containing this implicit variable. belongsTo implementation'>
	<container>

	^ parentBehaviouralEntity
]

{ #category : #accessing }
FmxNGTImplicitVariableGenerated >> parentBehaviouralEntity: anObject [

	parentBehaviouralEntity := anObject

]

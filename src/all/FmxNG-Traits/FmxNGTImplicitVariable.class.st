"
FAMIXImplicitVariable represents a variable defined by the compiler in a context, such as self, super, thisContext.
"
Class {
	#name : #FmxNGTImplicitVariable,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentBehaviouralEntity => FMOne type: #FmxNGTWithImplicitVariables opposite: #implicitVariables'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTImplicitVariable class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TImplicitVariable super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTImplicitVariable >> parentBehaviouralEntity [

	<generated>
	<MSEComment: 'The behaviour containing this implicit variable. belongsTo implementation'>
	<container>

	^ parentBehaviouralEntity
]

{ #category : #accessing }
FmxNGTImplicitVariable >> parentBehaviouralEntity: anObject [

	<generated>
	parentBehaviouralEntity := anObject

]

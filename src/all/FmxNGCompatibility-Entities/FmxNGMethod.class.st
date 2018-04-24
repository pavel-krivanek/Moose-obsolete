Class {
	#name : #FmxNGMethod,
	#superclass : #FmxNGBehaviouralEntity,
	#traits : 'FmxNGTMethod + FmxNGTWithCaughtExceptions + FmxNGTWithClassScope + FmxNGTWithDeclaredExceptions + FmxNGTWithThrownExceptions',
	#classTraits : 'FmxNGTMethod classTrait + FmxNGTWithCaughtExceptions classTrait + FmxNGTWithClassScope classTrait + FmxNGTWithDeclaredExceptions classTrait + FmxNGTWithThrownExceptions classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGMethod class >> annotation [

	<generated>
	<MSEClass: #Method super: #FmxNGBehaviouralEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGMethod class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGMethod class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTMethod FmxNGTWithCaughtExceptions FmxNGTWithClassScope FmxNGTWithDeclaredExceptions FmxNGTWithThrownExceptions)
]

{ #category : #meta }
FmxNGMethod class >> requirements [

	<generated>
	^ {  }
]

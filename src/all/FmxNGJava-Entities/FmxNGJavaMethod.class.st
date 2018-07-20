Class {
	#name : #FmxNGJavaMethod,
	#superclass : #FmxNGJavaNamedEntity,
	#traits : 'FmxNGTInvocable + FmxNGTMethod + FmxNGTTypedStructure + FmxNGTWithAccesses + FmxNGTWithCaughtExceptions + FmxNGTWithClassScope + FmxNGTWithDeclaredExceptions + FmxNGTWithImplicitVariables + FmxNGTWithInvocations + FmxNGTWithLocalVariables + FmxNGTWithParameters + FmxNGTWithReferences + FmxNGTWithSignature + FmxNGTWithThrownExceptions',
	#classTraits : 'FmxNGTInvocable classTrait + FmxNGTMethod classTrait + FmxNGTTypedStructure classTrait + FmxNGTWithAccesses classTrait + FmxNGTWithCaughtExceptions classTrait + FmxNGTWithClassScope classTrait + FmxNGTWithDeclaredExceptions classTrait + FmxNGTWithImplicitVariables classTrait + FmxNGTWithInvocations classTrait + FmxNGTWithLocalVariables classTrait + FmxNGTWithParameters classTrait + FmxNGTWithReferences classTrait + FmxNGTWithSignature classTrait + FmxNGTWithThrownExceptions classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaMethod class >> annotation [

	<generated>
	<MSEClass: #Method super: #FmxNGJavaNamedEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaMethod class >> generatedSlotNames [
	<generated>
	'FmxNGJavaMethod class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaMethod class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTInvocable FmxNGTMethod FmxNGTTypedStructure FmxNGTWithAccesses FmxNGTWithCaughtExceptions FmxNGTWithClassScope FmxNGTWithDeclaredExceptions FmxNGTWithImplicitVariables FmxNGTWithInvocations FmxNGTWithLocalVariables FmxNGTWithParameters FmxNGTWithReferences FmxNGTWithSignature FmxNGTWithThrownExceptions)
]

{ #category : #meta }
FmxNGJavaMethod class >> requirements [

	<generated>
	^ { FmxNGJavaType }
]

{ #category : #testing }
FmxNGJavaMethod >> isJUnit4Test [
	<MSEProperty: #isJUnit4Test type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is considered as a Junit 4 Java test'>
	^ self isAnnotatedWith: 'Test'
]

{ #category : #'Famix-Extensions' }
FmxNGJavaMethod >> parentTypeIsStub [
	^ self parentType ifNotNil: [ :e | e isStub ] ifNil: [ true ]
]

Class {
	#name : #FmxNGJavaSourceAnchor,
	#superclass : #FmxNGJavaEntity,
	#traits : 'FmxNGTSourceAnchor + TEntityMetaLevelDependency + TDependencyQueries',
	#classTraits : 'FmxNGTSourceAnchor classTrait + TEntityMetaLevelDependency classTrait + TDependencyQueries classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaSourceAnchor class >> annotation [

	<generated>
	<MSEClass: #SourceAnchor super: #FmxNGJavaEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaSourceAnchor class >> generatedSlotNames [
	<generated>
	'FmxNGJavaSourceAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaSourceAnchor class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTSourceAnchor)
]

{ #category : #meta }
FmxNGJavaSourceAnchor class >> requirements [

	<generated>
	^ { FmxNGJavaSourcedEntity }
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceAnchor >> accept: aVisitor [

	aVisitor visitSourceAnchor: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceAnchor >> completeText [
	"The complete text of a FileAnchor contains all the code of the file pointed by the source anchor. On the contrary the #sourceText return only the pant of the file concerned by the entity. For example a FAMIXFileAnchon knows the start line and end line of the source anchor into the file."
	
	"By default I return the sourceText because most of my subclasses will only do that."

	^ self sourceText
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceAnchor >> containerFiles [
	"I should return a collection of files corresponding to the source anchor. If there is no file just return an empty collection."

	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceAnchor >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self element: (aVisitor visit: anEntity)
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceAnchor >> isFile [
	^ false
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceAnchor >> isMultiple [
	^ false
]

{ #category : #metrics }
FmxNGJavaSourceAnchor >> lineCount [
	"I should return the number of line in the source text of the entity."

	<MSEProperty: #lineCount type: #Number>
	<derived>
	<MSEComment: 'The number of lines in the source text'>
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceAnchor >> queryAllIncomingInvocations [
	^ MooseQueryResult new
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceAnchor >> queryAllOutgoingInvocations [
	^ MooseQueryResult new
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceAnchor >> queryIncomingAccesses [
	^ MooseQueryResult new
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceAnchor >> queryIncomingReferences [
	^ MooseQueryResult new
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceAnchor >> queryIncomingTypeDeclarations [
	^ MooseQueryResult new
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceAnchor >> queryOutgoingAccesses [
	^ MooseQueryResult new
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceAnchor >> queryOutgoingReferences [
	^ MooseQueryResult new
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceAnchor >> queryOutgoingTypeDeclarations [
	^ MooseQueryResult new
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceAnchor >> querySureIncomingInvocations [
	^ MooseQueryResult new
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceAnchor >> querySureOutgoingInvocations [
	^ MooseQueryResult new
]

{ #category : #accessing }
FmxNGJavaSourceAnchor >> sourceText [
	^ self subclassResponsibility
]

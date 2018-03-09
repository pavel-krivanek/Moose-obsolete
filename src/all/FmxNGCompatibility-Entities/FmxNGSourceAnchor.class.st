Class {
	#name : #FmxNGSourceAnchor,
	#superclass : #FmxNGSourceAnchorGenerated,
	#traits : 'TEntityMetaLevelDependency + TDependencyQueries',
	#classTraits : 'TEntityMetaLevelDependency classTrait + TDependencyQueries classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGSourceAnchor class >> annotation [

	<MSEClass: #SourceAnchor super: #FmxNGSourceAnchorGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #accessing }
FmxNGSourceAnchor >> completeText [
	"The complete text of a FileAnchor contains all the code of the file pointed by the source anchor. On the contrary the #sourceText return only the pant of the file concerned by the entity. For example a FAMIXFileAnchon knows the start line and end line of the source anchor into the file."
	
	"By default I return the sourceText because most of my subclasses will only do that."

	^ self sourceText
]

{ #category : #testing }
FmxNGSourceAnchor >> isFile [
	^ false
]

{ #category : #testing }
FmxNGSourceAnchor >> isMultiple [
	^ false
]

{ #category : #accessing }
FmxNGSourceAnchor >> lineCount [
	"I should return the number of line in the source text of the entity."

	<MSEProperty: #lineCount type: #Number>
	<derived>
	<MSEComment: 'The number of lines in the source text'>
	^ self subclassResponsibility
]

{ #category : #accessing }
FmxNGSourceAnchor >> sourceText [
	^ self subclassResponsibility
]

Class {
	#name : #ExtractedTypeForTmp,
	#superclass : #ExtractedType,
	#instVars : [
		'compiledMethod'
	],
	#category : #RoelTyper-Core
}

{ #category : #'as yet unclassified' }
ExtractedTypeForTmp class >> forTmpOffset: offset ofCompiledMethod: aCompiledMethod inClass: aClass [
	^(self basicNew initialize)
		tempOffset: offset;
		ivarClass: aClass;
		compiledMethod: aCompiledMethod;
		yourself
]

{ #category : #'as yet unclassified' }
ExtractedTypeForTmp class >> new [
	^self basicNew initialize
]

{ #category : #accessing }
ExtractedTypeForTmp >> asBlockArgInTypeCollector: aTypeCollector [
	aTypeCollector transformAsBlockArg: self 
]

{ #category : #accessing }
ExtractedTypeForTmp >> compiledMethod [
	^ compiledMethod
]

{ #category : #accessing }
ExtractedTypeForTmp >> compiledMethod: anObject [
	compiledMethod := anObject
]

{ #category : #accessing }
ExtractedTypeForTmp >> tempOffset [
	^ivarName 
	"self triggerEvent: #changed"
]

{ #category : #accessing }
ExtractedTypeForTmp >> tempOffset: anOffset [
	ivarName := anOffset.
	"self triggerEvent: #changed"
]

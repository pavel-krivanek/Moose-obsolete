Class {
	#name : #PP2AdaptableReparseTest,
	#superclass : #PP2AbstractParserTest,
	#instVars : [
		'token1',
		'token2',
		'parser',
		'context'
	],
	#category : 'PetitParser2-Tests-Reparsing'
}

{ #category : #asserting }
PP2AdaptableReparseTest >> assert: aPP2Parser reparseWithContext: startContext [
	| resultContext |
	resultContext := aPP2Parser optimize enableDebug reparseAdaptableWithContext: startContext.
	
	self assert: resultContext isPetit2Success.
	self assert: resultContext atEnd.
	
	^ resultContext
]

{ #category : #asserting }
PP2AdaptableReparseTest >> context [
	^ PP2ReparsableContext new
]

{ #category : #accessing }
PP2AdaptableReparseTest >> parse: aStream withParser: aParser withContext: aContext [
	^ aParser optimize enableDebug parseAdaptable: aStream withContext: aContext
]

{ #category : #tests }
PP2AdaptableReparseTest >> testReparseAndReparse [
	token1 := $a asPParser plus token reparsable.
	
	parser := token1, #space asPParser plus ==> #first.
	
	context := 'aa  ' asReparsableContext. 
	context := self assert: parser reparseWithContext: context.
	self assert: context returnValue value = 'aa'.
	self assert: context returnValue start = 1.
	self assert: context returnValue stop = 2.
	self assert: context debugResult steps equals: 9.
	
	context := 'aaa ' asReparsableContext.
	context := self assert: parser reparseWithContext: context.
	self assert: context returnValue value = 'aaa'.
	self assert: context returnValue start = 1.
	self assert: context returnValue stop = 3.
	self assert: context debugResult steps equals: 10.
]

{ #category : #tests }
PP2AdaptableReparseTest >> testReparseDeleteAfter [
	token1 := $a asPParser plus token reparsable.
	
	parser := token1, #space asPParser star ==> #first.
	
	context := self assert: parser parse: 'aa  '.
	self assert: context returnValue value = 'aa'.
	self assert: context returnValue start = 1.
	self assert: context returnValue stop = 2.
	self assert: context debugResult steps equals: 9.
	
	context applyChange: (PP2DeleteCharacter on: 'aa ' at: 4).
	context := self assert: parser reparseWithContext: context.
	self assert: context returnValue value = 'aa'.
	self assert: context returnValue start = 1.
	self assert: context returnValue stop = 2.
	self assert: context debugResult steps equals: 5.

]

{ #category : #tests }
PP2AdaptableReparseTest >> testReparseDeleteBefore [
	token1 := $a asPParser plus token reparsable.
	
	parser := #space asPParser star, token1 ==> #second.
	
	context := self assert: parser parse: ' aa'.
	self assert: context returnValue value = 'aa'.
	self assert: context returnValue start = 2.
	self assert: context returnValue stop = 3.
	self assert: context debugResult steps equals: 9.
	
	context applyChange: (PP2DeleteCharacter on: 'aa' at: 1).
	context := self assert: parser reparseWithContext: context.
	self assert: context returnValue value = 'aa'.
	self assert: context returnValue start = 1.
	self assert: context returnValue stop = 2.
	
	self assert: context debugResult steps equals: 5.
]

{ #category : #tests }
PP2AdaptableReparseTest >> testReparseDeleteHighBoundary [
	token1 := $a asPParser plus token reparsable.
	
	parser := token1, #space asPParser star ==> #first.
	context := self assert: parser parse: 'a  '.
	self assert: context returnValue value = 'a'.
	self assert: context debugResult steps equals: 8.
	
	context applyChange: (PP2DeleteCharacter on: 'a ' at: 2).
	context := self assert: parser reparseWithContext: context.
	self assert: context returnValue value = 'a'.
	self assert: context debugResult steps equals: 8.
]

{ #category : #tests }
PP2AdaptableReparseTest >> testReparseDeleteHighBoundaryError [
	token1 := $a asPParser plus token reparsable.
	
	parser := token1, #space asPParser star ==> #first.
	context := self assert: parser parse: 'a a' end: 2.
	self assert: context returnValue value = 'a'.
	self assert: context debugResult steps equals: 8.
	
	context applyChange: (PP2DeleteCharacter on: 'aa' at: 2).
	context := self assert: parser reparseWithContext: context.
	self assert: context returnValue value equals: 'aa'.
	self assert: context returnValue start equals: 1.
	self assert: context debugResult steps equals: 9.
]

{ #category : #tests }
PP2AdaptableReparseTest >> testReparseDeleteInRange [
	token1 := $a asPParser plus token reparsable.
	
	parser := #space asPParser star, token1, #space asPParser star ==> #second.
	context := self assert: parser parse: 'aaa'.
	self assert: context returnValue value = 'aaa'.
	self assert: context debugResult steps equals: 11.
	
	context applyChange: (PP2DeleteCharacter on: 'aa' at: 2).
	context := self assert: parser reparseWithContext: context.
	self assert: context returnValue value = 'aa'.
	self assert: context returnValue start = 1.
	self assert: context returnValue stop = 2.
	self assert: context debugResult steps equals: 10.
]

{ #category : #tests }
PP2AdaptableReparseTest >> testReparseDeleteLowBoundary [
	token1 := $a asPParser plus token reparsable.
	
	parser := #space asPParser star, token1 ==> #second.
	context := self assert: parser parse: ' a'.
	self assert: context returnValue value = 'a'.
	self assert: context debugResult steps equals: 8.
	
	context applyChange: (PP2InsertCharacter on: ' aa' at: 1).
	context := self assert: parser reparseWithContext: context.
	self assert: context returnValue value = 'aa'.
	self assert: context debugResult steps equals: 9.
]

{ #category : #tests }
PP2AdaptableReparseTest >> testReparseInsertAfter [
	token1 := $a asPParser plus token reparsable.
	
	parser := token1, #space asPParser star ==> #first.
	
	context := self assert: parser parse: 'a '.
	self assert: context returnValue value = 'a'.
	self assert: context returnValue start = 1.
	self assert: context returnValue stop = 1.
	self assert: context debugResult steps equals: 8.
	
	context applyChange: (PP2InsertCharacter on: 'a  ' at: 3).
	context := self assert: parser reparseWithContext: context.
	self assert: context returnValue value = 'a'.
	self assert: context returnValue start = 1.
	self assert: context returnValue stop = 1.
	self assert: context debugResult steps equals: 5.

]

{ #category : #tests }
PP2AdaptableReparseTest >> testReparseInsertBefore [
	token1 := $a asPParser plus token reparsable.
	
	parser := #space asPParser star, token1 ==> #second.
	
	context := self assert: parser parse: ' a'.
	self assert: context returnValue value = 'a'.
	self assert: context returnValue start = 2.
	self assert: context returnValue stop = 2.
	self assert: context debugResult steps equals: 8.
	
	context applyChange: (PP2InsertCharacter on: '  a' at: 1).
	context := self assert: parser reparseWithContext: context.
	self assert: context returnValue value = 'a'.
	self assert: context returnValue start = 3.
	self assert: context returnValue stop = 3.
	
	self assert: context debugResult steps equals: 5.
]

{ #category : #tests }
PP2AdaptableReparseTest >> testReparseInsertHighBoundary [
	token1 := $a asPParser plus token reparsable.
	
	parser := token1, #space asPParser star ==> #first.
	context := self assert: parser parse: 'a '.
	self assert: context returnValue value = 'a'.
	self assert: context debugResult steps equals: 8.
	
	context applyChange: (PP2InsertCharacter on: 'aa ' at: 2).
	context := self assert: parser reparseWithContext: context.
	self assert: context returnValue value = 'aa'.
	self assert: context debugResult steps equals: 9.
]

{ #category : #tests }
PP2AdaptableReparseTest >> testReparseInsertHighBoundaryError [
	token1 := $a asPParser plus token reparsable.
	
	parser := token1, #space asPParser star ==> #first.
	context := self assert: parser parse: 'aa a' end: 3.
	self assert: context returnValue value = 'aa'.
	self assert: context debugResult steps equals: 9.
	
	context applyChange: (PP2InsertCharacter on: 'a  ' at: 2).
	context := self assert: parser reparseWithContext: context.
	self assert: context returnValue value = 'a'.
	self assert: context debugResult steps equals: 8.
]

{ #category : #tests }
PP2AdaptableReparseTest >> testReparseInsertInRange [
	token1 := $a asPParser plus token reparsable.
	
	parser := #space asPParser star, token1, #space asPParser star ==> #second.
	context := self assert: parser parse: 'aa'.
	self assert: context returnValue value = 'aa'.
	self assert: context debugResult steps equals: 10.
	
	context applyChange: (PP2InsertCharacter on: 'aaa' at: 2).
	context := self assert: parser reparseWithContext: context.
	self assert: context returnValue value = 'aaa'.
	self assert: context returnValue start = 1.
	self assert: context returnValue stop = 3.
	self assert: context debugResult steps equals: 11.
]

{ #category : #tests }
PP2AdaptableReparseTest >> testReparseInsertLowBoundary [
	token1 := $a asPParser plus token reparsable.
	
	parser := #space asPParser star, token1 ==> #second.
	context := self assert: parser parse: ' a'.
	self assert: context returnValue value = 'a'.
	self assert: context debugResult steps equals: 8.
	
	context applyChange: (PP2InsertCharacter on: ' aa' at: 1).
	context := self assert: parser reparseWithContext: context.
	self assert: context returnValue value = 'aa'.
	self assert: context debugResult steps equals: 9.
]

{ #category : #tests }
PP2AdaptableReparseTest >> testReparseInsertLowBoundaryError [
	token1 := $a asPParser plus token reparsable.
	
	parser := #space asPParser star, token1 ==> #second.
	context := self assert: parser parse: ' a'.
	self assert: context returnValue value = 'a'.
	self assert: context debugResult steps equals: 8.
	
	context applyChange: (PP2InsertCharacter on: '  a' at: 2).
	context := self assert: parser reparseWithContext: context.
	self assert: context returnValue value = 'a'.
	self assert: context debugResult steps equals: 8.
]

{ #category : #tests }
PP2AdaptableReparseTest >> testReparseMultipleChanges [
	token1 := $a asPParser plus token reparsable.
	
	parser := #space asPParser plus, token1 ==> #second.
	
	context := '  aa' asReparsableContext. 
	context := self assert: parser reparseWithContext: context.
	self assert: context returnValue value = 'aa'.
	self assert: context returnValue start = 3.
	self assert: context returnValue stop = 4.
	self assert: context debugResult steps equals: 9.
	
	context applyChange: (PP2InsertCharacter on: '   aa' at: 1).
	context applyChange: (PP2InsertCharacter on: '    aa' at: 2).
	context := self assert: parser reparseWithContext: context.
	self assert: context returnValue value = 'aa'.
	self assert: context returnValue start = 5.
	self assert: context returnValue stop = 6.
	
	self assert: context debugResult steps equals: 5.	
]

{ #category : #tests }
PP2AdaptableReparseTest >> testReparseMultipleChangesAtEnd [
	token1 := $a asPParser plus token reparsable.
	
	parser := #space asPParser plus, token1 ==> #second.
	
	context := '  aa' asReparsableContext. 
	context := self assert: parser reparseWithContext: context.
	self assert: context returnValue value = 'aa'.
	self assert: context returnValue start = 3.
	self assert: context returnValue stop = 4.
	self assert: context debugResult steps equals: 9.
	
	context applyChange: (PP2InsertCharacter on: '  aaa' at: 4).
	context applyChange: (PP2InsertCharacter on: '  aaaa' at: 5).
	context := self assert: parser reparseWithContext: context.
	self assert: context returnValue value = 'aaaa'.
	self assert: context returnValue start = 3.
	self assert: context returnValue stop = 6.
	
	self assert: context debugResult steps equals: 11.	
]

{ #category : #tests }
PP2AdaptableReparseTest >> testReparseNested [
	token1 := $a asPParser plus token reparsable.
	
	parser := (#space asPParser plus, token1) reparsable ==> #second.
	
	context := self assert: parser parse: '  aa'.
	self assert: context returnValue value = 'aa'.
	self assert: context returnValue start = 3.
	self assert: context returnValue stop = 4.
	self assert: context debugResult steps equals: 9.
	
	context applyChange: (PP2InsertCharacter on: '   aa' at: 1).
	context := self assert: parser reparseWithContext: context.
	self assert: context debugResult steps equals: 5.
	
	context applyChange: (PP2InsertCharacter on: '    aa' at: 2).
	context := self assert: parser reparseWithContext: context.
	self assert: context debugResult steps equals: 5.
]

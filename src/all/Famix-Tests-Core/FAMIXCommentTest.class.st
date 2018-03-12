Class {
	#name : #FAMIXCommentTest,
	#superclass : #FAMIXSourcedEntityTest,
	#category : #'Famix-Tests-Core'
}

{ #category : #helpers }
FAMIXCommentTest >> actualClass [
	^ FmxNGComment
]

{ #category : #tests }
FAMIXCommentTest >> testAddingComment [
	| cls |
	cls := FmxNGClass new.
	cls name: 'AClass'.
	self assert: cls mooseName == #AClass.
	self assert: cls comments isEmpty.
	cls addComment: 'This is a comment'.
	self assert: (cls comments allSatisfy: [ :c | c isKindOf: FmxNGComment ]).
	self assert: (cls comments at: 1) content equals: 'This is a comment'
]

{ #category : #tests }
FAMIXCommentTest >> testSourceText [
	| comment |
	comment := self actualClass new.
	self assert: comment sourceText isEmpty.
	comment content: 'something'.
	self assert: comment sourceText equals: 'something'.
	comment content: nil.
	self assert: comment sourceText isEmpty.
	comment
		sourceAnchor:
			(FmxNGSourceTextAnchor new
				source: 'something';
				yourself).
	self assert: comment sourceText equals: 'something'
]

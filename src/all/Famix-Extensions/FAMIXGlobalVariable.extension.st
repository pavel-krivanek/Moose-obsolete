Extension { #name : #FAMIXGlobalVariable }

{ #category : #'*Famix-Extensions' }
FAMIXGlobalVariable >> accept: aVisitor [

	aVisitor visitGlobalVariable: self
]

{ #category : #'*Famix-Extensions-testing' }
FAMIXGlobalVariable >> isPrivate [
	^ self isPublic not
]

{ #category : #'*Famix-Extensions-testing' }
FAMIXGlobalVariable >> isPublic [
	"checker whether I am called outside the module in which I am defined"
	^ self incomingAccesses anySatisfy: [:inv |
			inv accessor parentScope ~~ self parentScope]
]

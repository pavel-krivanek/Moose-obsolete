accessing
peekPushedBackToken
	^ (pushedBackToken notNil
		and: [pushedBackToken position = self position])
		ifTrue: [^ pushedBackToken]
		ifFalse: [^ nil]
tests
testBehaviorsWithDeclaredType
	| type behaviour |
	type := self actualClass new.
	behaviour := FAMIXBehaviouralEntity new.
	behaviour declaredType: type.
	self assert: behaviour declaredType == type.
	self assert: type behavioursWithDeclaredType size equals: 1.
	self assert: (type behavioursWithDeclaredType includes: behaviour)
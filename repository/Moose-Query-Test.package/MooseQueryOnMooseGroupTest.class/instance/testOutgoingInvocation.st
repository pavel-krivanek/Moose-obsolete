tests
testOutgoingInvocation
	| methGroup classGroup|
	methGroup := FAMIXMethodGroup withAll: (self model entities select: #isMethod).
	self assert: (methGroup queryOutgoing: FAMIXInvocation) size equals: 3.
	
	classGroup := FAMIXClassGroup withAll: (self model entities select: #isClass).
	self assert: (classGroup queryOutgoing: FAMIXInvocation) size equals: 3.
	
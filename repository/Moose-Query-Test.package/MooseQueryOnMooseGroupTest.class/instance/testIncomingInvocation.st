tests
testIncomingInvocation
	| methGroup classGroup|
	methGroup := FAMIXMethodGroup withAll: (self model entities select: #isMethod).
	self assert: (methGroup queryIncoming: FAMIXInvocation) size equals: 3.
	
	classGroup := FAMIXClassGroup withAll: (self model entities select: #isClass).
	self assert: (classGroup queryIncoming: FAMIXInvocation) size equals: 3.
	
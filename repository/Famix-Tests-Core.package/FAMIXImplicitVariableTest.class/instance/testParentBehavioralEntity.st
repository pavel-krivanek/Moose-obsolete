tests
testParentBehavioralEntity
	| behaviour implicitVariable |
	behaviour := FAMIXBehaviouralEntity new.
	implicitVariable := FAMIXImplicitVariable new.
	implicitVariable parentBehaviouralEntity: behaviour.
	self assert: implicitVariable parentBehaviouralEntity equals: behaviour.
	self assert: behaviour implicitVariables size equals: 1.
	self assert: behaviour implicitVariables first equals: implicitVariable
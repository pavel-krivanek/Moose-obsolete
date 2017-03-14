allIncomingInvocations
testTargetClassesInReferencingClasses

	self assert: (self packageP5FullReferee queryAllIncomingInvocations targetClasses
		equalsTo: (Set with: self c11FullRefereeOutSide))
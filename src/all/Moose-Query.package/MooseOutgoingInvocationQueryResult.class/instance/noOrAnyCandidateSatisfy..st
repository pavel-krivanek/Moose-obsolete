filtering
noOrAnyCandidateSatisfy: aConditionBlock 
	"With this definition, we select an invocation when at least one of its candidates satisfy the condition.
	We also select invocations with no candidate"

	^ self newAssocResultWith: (storage select: [ :invo | invo to isEmpty or: [invo to anySatisfy: aConditionBlock] ])
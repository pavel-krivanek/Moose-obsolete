filtering
anyCandidateSatisfy: aConditionBlock 
	"With this definition, we select an invocation when at least one of its candidates satisfy the condition."

	^ self newAssocResultWith: (storage select: [ :invo | invo to anySatisfy: aConditionBlock ])
private - utilities
candidateListOperatorClass
	"return the class corresponding to the strategy selected to compute candidates for invocations"
	
	| strategy |
	strategy := wizardInformations at: #candidateInvocationStrategy.
	strategy = 'Do not compute any candidate'
		ifTrue: [^ CandidateListOperatorNotAcceptingAnyReceiver ].
	strategy = 'Use the standard CandidateListOperator'
		ifTrue: [^ CandidateListOperator ].
	strategy = 'Compute for simple receivers ("self" "super" or a Class ) '
		ifTrue: [^ CandidateListOperatorAcceptingSimpleKindsOfReceiver  ].
	strategy = 'Compute for simple receivers and variables'
		ifTrue: [^ CandidateListOperatorAcceptingBasicAndVariableReceivers ].
	strategy = 'Compute for any kind of receiver'
		ifTrue: [^ CandidateListOperatorAcceptingAnyKindOfReceiver ].
	
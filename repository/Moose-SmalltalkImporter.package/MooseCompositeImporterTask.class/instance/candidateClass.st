protected hooks
candidateClass
	candidateClass isNil ifTrue: [ candidateClass := CandidateListOperator].
	^ candidateClass 
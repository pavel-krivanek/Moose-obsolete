a CandidateListOperatorAcceptingAnyKindOfReceiver compute a list of possible type for a FamixInvocation's receiver when:
	
- the receiver is a Class (so its type is then evident :))
- the receiver is 'self'
- the receiver is 'super'
- the receiver is a FAMIXAttribute

should normally accept any kind of receiver, but all type are not yet supported or implemented.
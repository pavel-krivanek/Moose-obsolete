preconditions
preconditions
	^ (self checkCompositeParser: class) & (RBCondition hasSubclasses: class) not
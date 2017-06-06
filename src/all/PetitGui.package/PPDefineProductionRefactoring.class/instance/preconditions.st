preconditions
preconditions
	^ (self checkCompositeParser: class)
		& (RBCondition withBlock: [ self checkSource ] errorString: 'Unable to parse source code')
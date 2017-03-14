initializing
initialize
	super initialize.
	
	theNonMetaClassExamples := WeakIdentityKeyDictionary new: 10000.
	theMetaClassExamples := WeakIdentityKeyDictionary new: 10000.
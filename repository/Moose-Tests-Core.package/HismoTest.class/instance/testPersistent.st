testing - model history
testPersistent
	
	self
		assert:
			(testData simpleHistory allClassHistories entityNamed:
					#'aNamespace::ClassA') isPersistent.
	self
		assert:
			(testData simpleHistory allMethodHistories entityNamed:
					#'aNamespace::ClassA.methodA1()') isPersistent.
	self
		assert:
			(testData simpleHistory allAttributeHistories entityNamed:
					#'aNamespace::ClassA.attributeA1') isPersistent.
	self
		assert:
			(testData simpleHistory allNamespaceHistories entityNamed: #aNamespace)
				isPersistent
testing - model history
testDayFly
	
	self
		assert:
			(testData simpleHistory allClassHistories entityNamed:
					#'aNamespace::anotherNamespace::ClassA') isDayFly.
	self
		assert:
			(testData simpleHistory allAttributeHistories entityNamed:
					#'aNamespace::ClassC.attributeC2') isDayFly.
	self
		assert:
			(testData simpleHistory allMethodHistories entityNamed:
					#'aNamespace::ClassC.methodC3()') isDayFly.
	self
		assert:
			(testData simpleHistory allNamespaceHistories entityNamed:
					#'aNamespace::anotherNamespace') isDayFly.
	^testData simpleHistory
assertions
assertNotification: aNotification for: anObject withList: aList hasType: aSelectorCollection
	self
		assert: aNotification notNil;
		assert: (aSelectorCollection includes: aNotification selector).
	self assert:
		aNotification arguments =
			((Array with: anObject with: aList)
				copyFrom: 1
				to: (aNotification selector asString occurrencesOf: $:)).
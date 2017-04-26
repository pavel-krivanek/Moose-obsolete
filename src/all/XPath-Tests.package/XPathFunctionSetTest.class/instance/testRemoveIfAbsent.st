tests
testRemoveIfAbsent
	| set |

	super testRemoveIfAbsent.

	set := self setWithElements.
	self setElements
		with: self disjointSameNameSetElements
		do: [:function :sameNameFunction |
			self assert:
				(set
					remove: sameNameFunction
					ifAbsent: [self absentSetElement]) = self absentSetElement.

			set add: sameNameFunction.
			self assert:
				(set
					remove: function
					ifAbsent: [self absentSetElement]) = self absentSetElement.
			self assert:
				(set
					remove: sameNameFunction
					ifAbsent: [self fail]) = sameNameFunction].
tests
testIncludes
	| set |

	super testIncludes.

	set := self setWithElements.
	self setElements
		with: self disjointSameNameSetElements
		do: [:function :sameNameFunction |
			self deny: (set includes: sameNameFunction).

			set add: sameNameFunction.
			self
				deny: (set includes: function);
				assert: (set includes: sameNameFunction)].
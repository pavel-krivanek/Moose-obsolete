tests
testRemoveIfAbsent
	| set |

	set := self setWithElements.
	self setElements do: [:each |
		self assert:
			(set
				remove: each
				ifAbsent: [self fail]) == each.
		self deny: (set includes: each).
		self
			assert:
				(set
					remove: each
					ifAbsent: [self absentSetElement]) == self absentSetElement.
		self
			should: [set remove: each]
			raise: Error].
	self assert: set isEmpty.
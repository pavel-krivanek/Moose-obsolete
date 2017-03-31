tests
testFunctionNamedIfAbsent
	| set |

	set := self setWithElements.
	self setElements do: [:each |
		self assert:
			(set
				functionNamed: each prototypeName
				ifAbsent: [self absentSetElement]) == each].
	self assert:
		(set
			functionNamed: self absentSetElement prototypeName
			ifAbsent: [self absentSetElement]) == self absentSetElement.
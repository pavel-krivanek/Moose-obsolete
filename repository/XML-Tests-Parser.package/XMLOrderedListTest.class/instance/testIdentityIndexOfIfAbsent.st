tests
testIdentityIndexOfIfAbsent
	| list |

	list := self listWithItems.
	1 to: list size do: [:i |
		self
			assert: (list identityIndexOf: (list at: i) ifAbsent: [-1]) = i;
			assert: (list identityIndexOf: (list at: i) copy ifAbsent: [-1]) = -1].
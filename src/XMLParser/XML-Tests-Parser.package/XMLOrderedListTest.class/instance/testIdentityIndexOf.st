tests
testIdentityIndexOf
	| list |

	list := self listWithItems.
	1 to: list size do: [:i |
		self
			assert: (list identityIndexOf: (list at: i)) = i;
			assert: (list identityIndexOf: (list at: i) copy) isZero].
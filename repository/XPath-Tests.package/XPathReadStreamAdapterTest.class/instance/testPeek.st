tests
testPeek
	| adapter |

	adapter := self newStreamAdapterOnQualifiedName.
	self qualifiedName do: [:each |
		self assert: adapter peek == each.
		adapter next].
	self assert: adapter peek isNil.
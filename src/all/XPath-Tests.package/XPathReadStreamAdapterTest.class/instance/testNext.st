tests
testNext
	| adapter |

	adapter := self newStreamAdapterOnQualifiedName.
	self qualifiedName do: [:each |
		self assert: adapter next == each].
	self assert: adapter next isNil.
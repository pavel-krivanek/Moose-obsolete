tests
testContents
	| adapter |

	adapter := self newStreamAdapter.
	self outputCollection do: [:each |
		"use #= because wide chars aren't #== pre-Spur"
		self
			assert: adapter peek = each;
			assert: adapter contents = self outputCollection;
			assert: adapter peek = each;
			assert: adapter next = each].
	self assert: adapter contents = self outputCollection.
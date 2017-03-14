tests
testNextPut
	| adapter |

	adapter := self newStreamAdapter.
	self inputCollection do: [:each |
		"use #= because wide chars aren't #== pre-Spur"
		self assert: (adapter nextPut: each) = each].
	self assert: adapter contents = self outputCollection.
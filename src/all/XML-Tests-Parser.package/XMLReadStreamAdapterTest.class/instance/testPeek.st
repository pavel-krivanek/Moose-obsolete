tests
testPeek
	| adapter |

	adapter := self newStreamAdapter.
	self outputCollection do: [:each |
		"use #= because wide chars aren't #== pre-Spur"
		self assert: adapter peek = each.
		adapter next].
	self assert: adapter peek isNil.
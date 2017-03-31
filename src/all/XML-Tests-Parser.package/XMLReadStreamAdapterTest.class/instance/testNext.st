tests
testNext
	| adapter |

	adapter := self newStreamAdapter.
	self outputCollection do: [:each |
		"use #= because wide chars aren't #== pre-Spur"
		self assert: adapter next = each].
	self assert: adapter next isNil.

	0 to: self outputCollection size do: [:i |
		adapter := self newStreamAdapter.
		self assert: (adapter next: i) = (self outputCollection copyFrom: 1 to: i)].

	adapter := self newStreamAdapter.
	self
		assert: (adapter next: self outputCollection size + 1) = self outputCollection;
		assert: (adapter next: 1) isEmpty.
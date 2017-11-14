private 
expectNextAll: aString
	aString do: [:each |
		"use #= for pre-SpurVM compatibility where wide chars aren't #=="
		self next = each
			ifFalse: [^ nil]].
	^ aString.
private 
expectNextAll: aString
	aString do: [:each |
		self next == each
			ifFalse: [^ nil]].
	^ aString.
testing
testRecursivePattern
	| recursive |
	recursive := PPDelegateParser new.
	recursive setParser: recursive.
	searcher matches: recursive do: [ :parser :answer | parser ].
	self assert: (searcher execute: recursive) equals: recursive.
	self assert: (searcher execute: $a asParser) isNil.
	self assert: (searcher execute: $a asParser / $b asParser star) isNil
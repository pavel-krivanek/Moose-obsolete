as yet unclassified
testExprSeq5
	
self parse: '
	printf 1
	;printf 2;' rule: #seqBlock.

self assert: result size = 3.
self assert: result first first = #printf.
self assert: result first second = 1.
self assert: result second first = #printf.
self assert: result second second = 2.
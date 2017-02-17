as yet unclassified
testExprSeq1
	self parse: '
	printf 1;
	printf 2;
	printf 3' rule: #seqBlock.

self assert: result size = 3.
self assert: result first first = #printf.
self assert: result first second = 1.
self assert: result third first = #printf.
self assert: result third second = 3.
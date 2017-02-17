as yet unclassified
testExprSeqLightweight5

parser := self parserInstanceFor: #seqBlock.
	
self fail: '
   printf 1
   printf 2
    printf 3'
rule: #seqBlock.
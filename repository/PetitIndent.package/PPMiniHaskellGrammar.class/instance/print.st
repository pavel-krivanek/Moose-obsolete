grammar
print
	^ ('print' asParser, number trimBlanks) ==> [ :tokens | #print ]
accessing
index 
	^$[ asParser, #digit asParser plus, $] asParser 
		==> [ :nodes | Number readFrom: nodes second readStream ]
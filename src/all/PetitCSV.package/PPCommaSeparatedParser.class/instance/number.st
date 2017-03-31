as yet unclassified
number 
	^ ($- asParser optional , #digit asParser plus , ($. asParser , #digit asParser plus) optional) token
		==> [ :nodes | nodes first value asNumber ]
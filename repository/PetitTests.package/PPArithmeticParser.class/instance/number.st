grammar
number
	^ ($- asParser optional , #digit asParser plus , ($. asParser , #digit asParser plus) optional) flatten trim 
		==> [ :value | value asNumber ]
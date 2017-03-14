basic
number
	^ ($- asParser optional , natural , ($. asParser , natural , e optional) optional) flatten token trim
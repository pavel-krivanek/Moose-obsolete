productions
variable
	^ (#letter asParser , #word asParser star) flatten trim
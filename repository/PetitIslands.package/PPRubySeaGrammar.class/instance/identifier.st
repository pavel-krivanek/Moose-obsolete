grammar
identifier
	^ (#letter asParser / $_ asParser, word star) flatten
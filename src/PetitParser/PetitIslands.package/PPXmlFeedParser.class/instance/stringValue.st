grammar
stringValue
	^ (#letter asParser / #digit asParser) star flatten trim
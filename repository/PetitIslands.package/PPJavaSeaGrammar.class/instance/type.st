method
type
	^ (#letter asParser, (#letter asParser / #digit asParser / $_ asParser) star) flatten 
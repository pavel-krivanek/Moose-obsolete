as yet unclassified
command
	^ (#letter asParser, (#letter asParser / #digit asParser) star) flatten
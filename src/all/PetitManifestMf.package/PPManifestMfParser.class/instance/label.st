as yet unclassified
label
	^ (#letter asParser / #digit asParser / $- asParser) star flatten trim
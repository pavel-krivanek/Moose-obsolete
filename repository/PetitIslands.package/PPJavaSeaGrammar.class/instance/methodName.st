method
methodName
	^ ((#letter asParser / $_ asParser), (#letter asParser / #digit asParser / $_ asParser) star) flatten trimBlanks
class
classId
	^ (#uppercase asParser, (#letter asParser / #digit asParser / $_ asParser) star) flatten 
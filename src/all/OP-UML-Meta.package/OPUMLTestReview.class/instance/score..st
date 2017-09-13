accessing
score: aNewScore
	| oldScore |
	oldScore := score.
	score := aNewScore.
	OPUMLToOneLink
		on: self
		thisSelector: #score
		otherSelector: #review
		updateFrom: oldScore
		to: aNewScore
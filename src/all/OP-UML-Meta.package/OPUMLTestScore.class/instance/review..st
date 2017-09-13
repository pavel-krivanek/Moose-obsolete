accessing
review: aNewReview
	| anOldReview |
	anOldReview := review.
	review := aNewReview.
	OPUMLToOneLink
		on: self
		thisSelector: #review
		otherSelector: #score
		updateFrom: anOldReview
		to: aNewReview
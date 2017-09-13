accessing
traitsGroup

	"answer all traits in relation with this trait (including itself)"
	
	^ {self}, (self traitsGroupExcept: {self})
	
	
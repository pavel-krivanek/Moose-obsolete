instance creation
fromString: stopwords
	
	^ super new addAll: (stopwords runsFailing: #isSeparator).
	"^self withAll: (stopwords runsFailing: #isSeparator)"
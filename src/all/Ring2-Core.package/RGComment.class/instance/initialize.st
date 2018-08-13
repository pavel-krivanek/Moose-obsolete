initialization
initialize

	super initialize.
	
	content := self unresolvedValue: self defaultContent.	
	author := self unresolvedValue: self defaultAuthor.	
	time := self unresolvedValue: self defaultTime.	
	
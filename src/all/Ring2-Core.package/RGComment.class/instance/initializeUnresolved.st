initialization
initializeUnresolved

	super initializeUnresolved.
	
	content := self unresolvedValue: self defaultContent.	
	author := self unresolvedValue: self defaultAuthor.	
	time := self unresolvedValue: self defaultTime.	
	
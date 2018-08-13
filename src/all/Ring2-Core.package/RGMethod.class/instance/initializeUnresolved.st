initialization
initializeUnresolved

	super initializeUnresolved.

	sourceCode := self unresolvedValue: self defaultSourceCode.
	tags := self unresolvedValue: self defaultTags.	
	package := self unresolvedValue: self parent package.
	author := self unresolvedValue: self defaultAuthor.
	time := self unresolvedValue: self defaultTime.
	
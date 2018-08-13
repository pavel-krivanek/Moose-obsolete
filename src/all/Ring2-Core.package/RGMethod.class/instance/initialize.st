initialization
initialize

	super initialize.

	sourceCode := self unresolvedValue: self defaultSourceCode.
	tags := self unresolvedValue: self defaultTags.	"tags must be set before package"
	package := self unresolvedValue: self parent package.
	author := self unresolvedValue: self defaultAuthor.
	time := self unresolvedValue: self defaultTime.
	
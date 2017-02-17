public
text: aOneArgBlock
	"Set the text of the popup"
	"The argument, when evaluated with an object return an object, to which #asString is sent to"
	self textElement: [ :el | aOneArgBlock rtValue: el model ]
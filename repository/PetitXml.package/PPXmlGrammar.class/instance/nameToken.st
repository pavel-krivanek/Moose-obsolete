token
nameToken
	"[5]   	Name	   ::=   	NameStartChar (NameChar)*"

	^ (nameStartChar , nameChar star) flatten
accessing
sourceCode: anObject

	"ATTENTION: There is no check here if the selector is changed!"

	self backend forMethod setSourceCodeFor: self to: anObject asString
	"TODO: announcements"
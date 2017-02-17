naming conventions
famixFullClassNameForSmalltalkFullName: aBinding
	"only sent by UnitTests, not by domain"

	^(self findClassNamedOrNilFromFullName: aBinding) mooseName
replacing
replaceAll: aSource with: aReplacement
	"works like copyReplaceAll:with:"
	self string:
		(self string
			copyReplaceAll: aSource asString
			with: aReplacement asString)
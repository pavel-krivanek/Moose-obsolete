testing-comments
testComment8crlf

		self 
				parse: '/*',	(Character codePoint: 13) asString,
								(Character codePoint: 10) asString,'*/'
				rule: #traditionalComment

	"Created: / 21-04-2015 / 17:07:58 / Jan Vrany <jan.vrany@fit.cvut.cz>"
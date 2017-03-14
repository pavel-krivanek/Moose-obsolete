testing-comments
testComment8cr

		self 
				parse: '/*',(Character codePoint: 13) asString,'*/'
				rule: #traditionalComment

	"Created: / 21-04-2015 / 17:07:40 / Jan Vrany <jan.vrany@fit.cvut.cz>"
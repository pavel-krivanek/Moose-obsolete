testing-comments
testComment8lf

		self 
				parse: '/*',(Character codePoint: 10) asString,'*/'
				rule: #traditionalComment

	"Created: / 21-04-2015 / 17:07:46 / Jan Vrany <jan.vrany@fit.cvut.cz>"
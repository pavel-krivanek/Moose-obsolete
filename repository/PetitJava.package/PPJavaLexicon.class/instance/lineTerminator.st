grammar-lineTerminators
lineTerminator

	self flag: 'Hack alert - should be fixed immediately in PJTraditionalCommentsNode>>comment:'.

		^ (((Character codePoint: 10) asPParser) ==> [ :lf | Array with: lf with: nil ])
		  / (((Character codePoint: 13) asPParser , ((Character codePoint: 10) asPParser ) optional )) ==> [ :nodes | Array with: nodes first with: nil ]

	"Modified: / 21-04-2015 / 17:16:50 / Jan Vrany <jan.vrany@fit.cvut.cz>"
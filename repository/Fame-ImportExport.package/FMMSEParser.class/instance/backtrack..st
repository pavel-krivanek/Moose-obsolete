private
backtrack: integer
	"Backtracks to given integer."

	integer ~~ stream position ifTrue: [
		stream position: integer - 1. 
		self next "fetch peek again" ]. 
	^false
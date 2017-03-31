public
checkThatClassIsStillCorrect
	"as stClass is lazy acessed we have to check that the stClass is flsuh when processing a new method on a different class"
	
	self stClass name = self classNameFromMethod ifFalse: [stClass := nil]
	
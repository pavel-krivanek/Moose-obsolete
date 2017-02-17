public interface
signature
	"returns the unique name of the history"
	
	| uName |
	uName := #''.
	self isEmpty ifFalse: [uName := self first signature].
	^uName
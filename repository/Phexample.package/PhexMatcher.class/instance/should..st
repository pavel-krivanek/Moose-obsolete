private
should: anObject
	"If you wish to forward to another 'should method call, the state of this matcher
	 would be lost. Instead, call either expect*, which works fine, or, if nothing else works,
	use self should:. Note that this is much slower and leads to messier stack traces than 
	calling expect*."
	^ PhexMatcher with: anObject state: state copy
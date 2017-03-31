tests
testIncludes
	| set |

	set := self emptySet.
	self deny: (self setElements anySatisfy: [:each | set includes: each]).

	set := self setWithElements.
	self assert: (self setElements allSatisfy: [:each | set includes: each]).
	self deny: (self disjointSetElements anySatisfy: [:each | set includes: each]).

	set := self setWithDisjointElements.
	self assert: (self disjointSetElements allSatisfy: [:each | set includes: each]).
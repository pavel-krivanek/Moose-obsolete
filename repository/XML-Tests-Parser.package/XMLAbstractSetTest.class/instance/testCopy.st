tests
testCopy
	| set copy |

	set := self setWithElements.
	copy := set copy.
	self
		assert: set = copy;
		deny: set == copy.

	set addAll: self disjointSetElements.
	self deny: set = copy.

	copy addAll: self disjointSetElements.
	self assert: set = copy.
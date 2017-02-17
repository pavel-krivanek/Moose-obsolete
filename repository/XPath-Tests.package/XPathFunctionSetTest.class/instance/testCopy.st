tests
testCopy
	| set copy |

	super testCopy.

	set := self setWithElements.
	copy := set copy.
	self
		assert: set functionsByName = copy functionsByName;
		deny: set functionsByName == copy functionsByName.
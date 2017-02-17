tests
testIsAccepting
	| set isAccepting lastAccepting |

	set := self emptySet.
	isAccepting := false.
	self deny: set isAccepting.
	self setElements do: [:each |
		set add: each.
		each isAccepting
			ifTrue: [
				isAccepting := true.
				lastAccepting := each].
		self assert: set isAccepting = isAccepting].
	self assert: set isAccepting.

	self setElements do: [:each |
		set remove: each.
		(set includes: lastAccepting)
			ifTrue: [self assert: set isAccepting]
			ifFalse: [self deny: set isAccepting]].
	self deny: set isAccepting.

	self deny:
		(self setWithElements
			removeAll;
			isAccepting).
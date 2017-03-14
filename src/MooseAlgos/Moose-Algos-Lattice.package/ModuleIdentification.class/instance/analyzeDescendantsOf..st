middle-phase
analyzeDescendantsOf: aTop
	"aTop is a potential module top node. The method analyzes if the descendants of the aTop only have a single connection to the top and to the bottom. If it is not so, "

	| descNodes toRemove |
	descNodes := aTop descendants.
	self candidate: aTop.
	"(aTop labels first) isEmpty ifFalse:[ 
	self haltIf: [(aTop labels first) asArray first value = #last]]."
	descNodes do: [: each | 
		(self hasOneAncestor: each WhichIs: aTop) 
				ifFalse: [
					self flushCandidate.
					^ false ]
				ifTrue: 
					[self candidate: each].
		].
		(self isEndConditionWith: descNodes)
				ifTrue: [	^ true].
	^ self treatNextLevel: (self computeNextLevelNodes: descNodes).
enumerating
descendantElementsCollect: aBlock
	"returns an ordered list of the values of evaluating all descendant
	elements with aBlock"
	| collectedObjects |

	collectedObjects := self newListForCollect.
	self descendantElementsDo: [:each |
		collectedObjects addLast: (aBlock value: each)].
	^ collectedObjects.
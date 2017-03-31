enumerating
allElementsCollect: aBlock
	"returns an ordered list of the values of evaluating all descendant
	elements (and the receiver if it's an element) with aBlock"
	| collectedObjects |

	collectedObjects := self newListForCollect.
	self allElementsDo: [:each | collectedObjects addLast: (aBlock value: each)].
	^ collectedObjects.
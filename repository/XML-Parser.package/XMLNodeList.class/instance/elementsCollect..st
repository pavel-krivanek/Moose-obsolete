enumerating
elementsCollect: aBlock
	| collectedElements |

	"implementing with #elementsDo: benefits the caching subclass because
	of its fast #elementsDo: implementation"
	collectedElements := self copyEmptyForCollect.
	self elementsDo: [:each |
		collectedElements addLast: (aBlock value: each)].
	^ collectedElements.
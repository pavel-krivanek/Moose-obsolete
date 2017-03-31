enumerating
elementsSelect: aBlock
	| selectedElements |

	"implementing with #elementsDo: benefits the caching subclass because
	of its fast #elementsDo: implementation"
	selectedElements := self copyEmpty.
	self elementsDo: [:each |
		(aBlock value: each)
			ifTrue: [selectedElements addToCopyLast: each]].
	^ selectedElements.
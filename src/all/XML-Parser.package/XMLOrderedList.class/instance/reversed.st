converting
reversed
	| reversed |

	reversed := self copyEmpty.
	self reverseDo: [:each | reversed addToCopyLast: each].
	^ reversed.
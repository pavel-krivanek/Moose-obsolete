converting
reversed
	| reversed |

	reversed := self copyEmpty.
	self reverseDo: [:each | reversed addLast: each].
	^ reversed.
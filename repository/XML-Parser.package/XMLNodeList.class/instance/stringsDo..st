enumerating
stringsDo: aBlock
	self stringNodesDo: [:each | aBlock value: each string]
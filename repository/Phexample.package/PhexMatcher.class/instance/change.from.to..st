expecting-change
change: aBlock from: before to: after
	(self should: aBlock value) = before.
	receiver value.
	(self should: aBlock value)  = after.
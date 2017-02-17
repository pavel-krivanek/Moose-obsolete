accessing
next
	| result |
	result := super next.
	self step.
	^ result
accessing
next: aNumber
	| result |
	result := super next: aNumber.
	self step.
	^ result
testing
testValue
	| result |
	result := PPToken on: 'var'.
	self should: [ result value ] raise: Notification
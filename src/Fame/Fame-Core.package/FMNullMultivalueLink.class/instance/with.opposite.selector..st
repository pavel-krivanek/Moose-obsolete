private
with: anOwner opposite: anOpposite selector: aSelector

	[ anOpposite numArgs = 1 ] assert.
	owner := anOwner.
	opposite := anOpposite.
	selector := aSelector
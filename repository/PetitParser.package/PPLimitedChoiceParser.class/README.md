A PPLimitedChoiceParser is similar to the choice parser except for the fact, that limit must pass if one of the choices passes. This is similar strategy as with the PPLimitedRepeatingParsers.

This way, one can implement choices that successfully parse this (if limit is filled with 'a'):

('aa' // 'a') 'a' parse: 'aa'

The limit can be automatically filled using elements from either follow or next set (see methods  PPParser>>followSets or PPParser>>nextSets).

Limit is by default epsilon and therefore it behaves as an ordinary ordered choice.

Instance Variables
	limit:		<Object>

limit
	- xxxxx

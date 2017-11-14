implementing
function
	^ self firstArgument
		inject: 0
		into: [:i :each | i + each stringValue asXPathNumber]
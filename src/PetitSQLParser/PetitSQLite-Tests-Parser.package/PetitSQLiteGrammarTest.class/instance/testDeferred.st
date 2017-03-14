tests
testDeferred
	self 
		parse: ' DEFERRED ' "result should be 'DEFERRED' "
		rule: #deferred.

	self 
		parse: ' Deferred ' "result should be 'Deferred' "
		rule: #deferred.
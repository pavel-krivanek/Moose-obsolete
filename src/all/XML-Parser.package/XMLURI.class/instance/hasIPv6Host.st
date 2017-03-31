testing
hasIPv6Host
	^ self hasHost
		and: [self rawHost first == $[
			and: [self rawHost last == $]]]
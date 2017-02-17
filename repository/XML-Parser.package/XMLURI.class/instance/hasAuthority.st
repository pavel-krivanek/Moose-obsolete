testing
hasAuthority
	^ self hasUserInfo
		or: [self hasHost
			or: [self hasPort]]
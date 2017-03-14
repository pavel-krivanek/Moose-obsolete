accessing
fullURIWithPortString
	^ self domainURIWithPortString, self absolute, self queryURIString, self fragmentURIString
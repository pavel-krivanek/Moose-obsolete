accessing
schemelessURIWithPortString
	^ (self domainURIWithPortString copyAfter: $:), self absolute, self queryURIString, self fragmentURIString
accessing
schemelessURIString
	^ (self domainURIString copyAfter: $:), self absolute, self queryURIString, self fragmentURIString
accessing
externalEntityResolver
	"uses the caching resolver by default"
	^ externalEntityResolver
		ifNil: [externalEntityResolver := DTDExternalEntityResolver default]
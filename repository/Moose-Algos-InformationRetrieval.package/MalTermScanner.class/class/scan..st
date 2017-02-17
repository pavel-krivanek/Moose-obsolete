running
scan: input

	| scanner |
	scanner := self new onStream: input readStream.
	^ scanner allTerms.
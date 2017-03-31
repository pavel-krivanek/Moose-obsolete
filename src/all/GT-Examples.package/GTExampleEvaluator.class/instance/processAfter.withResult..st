private
processAfter: anExample withResult: anObject
	| provider |
	anExample after ifNil: [ ^ self ].
	provider := self providerFor: anExample after.
	anExample after method
		gtValueWithReceiver: provider 
		possibleArguments: { anObject }.
	providers removeKey: provider class
running
run
	queue do: [ :cls | self processClass: cls ].
	self resolveObjectReferences.
	self class shouldValidateMetaModel
		ifTrue: [ self validateMetaModel ]
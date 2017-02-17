running
run
	queue do: [ :cls | self processClass: cls ].
	self resolveObjectReferences.
	self validateMetaModel.
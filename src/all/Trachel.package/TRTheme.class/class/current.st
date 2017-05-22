accessing
current
	Current ifNotNil: [ ^ Current ].
	Current := self infer.
	^ Current
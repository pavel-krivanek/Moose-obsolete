hooks
connectWithView: aView
	(aView hasAttribute: self className)
		ifFalse: [ self setupView: aView ].

	aView
		when: TRResizeCanceled
		do: [ :event | 
			event shape = element trachelShape
				ifFalse: [ self removeHandles ] ]
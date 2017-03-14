public - events-registering
popupDecorator: aOneArgBlock
	| deco |
	self
		when: TRMouseEnter
		do: [ :event | 
			deco := aOneArgBlock value: event element model.
			deco hasDatasets
				ifFalse: [ deco dataset: dataSet ].
			self builder decorators add: deco.
			deco
				builder: self builder;
				render ].
	self
		when: TRMouseLeave
		do: [ :event | 
			deco remove.
			self builder decorators remove: deco ]
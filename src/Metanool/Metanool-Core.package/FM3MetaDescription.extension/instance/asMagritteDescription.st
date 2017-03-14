*metanool-core
asMagritteDescription
	| description |
	description := MAContainer new.
	description label: self name.
	self allAttributes do: [ :attribute | 
		description add: attribute asMagritteDescription ].
	^ description
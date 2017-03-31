*metanool-core
asMagritteDescription
	^ (self magritteDescriptionInstanceFor: self type)
		accessor: (MTLFamePropertyAccessor fameProperty: self);
		label: self name;
		yourself
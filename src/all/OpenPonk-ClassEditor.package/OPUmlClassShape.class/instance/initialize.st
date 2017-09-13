initialization
initialize
	super initialize.
	self sharedStyle fillColor: Color white.
	stereotypeLabel := OPUmlKeywordLabel new.
	stereotypeLabel text: [ :model | self stereotypeText ].
	stereotypeLabel localStyle: OPUmlStyle new.
	stereotypeLabel owningElement: self.
	nameLabel := OPUmlNameLabel new.
	nameLabel text: [ :model | model name ].
	nameLabel emphasis: [ :model :style | style fontItalic: model isAbstract ].
	nameLabel localStyle: (OPUmlStyle new fontSize: 11).
	nameLabel owningElement: self.
	attributes := OPUmlCompartment new.
	attributes owningElement: self.
	operations := OPUmlCompartment new.
	operations owningElement: self
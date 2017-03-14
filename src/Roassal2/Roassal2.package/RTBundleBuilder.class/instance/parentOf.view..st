as yet unclassified
parentOf: model view: aView
	| element |
	element := view elementFromModel: model.
	element ifNil: [ ^ nil ].
	^ (element attributes at: #parent ifAbsent: [ nil ]) ifNotNil: [:parent | parent model ].
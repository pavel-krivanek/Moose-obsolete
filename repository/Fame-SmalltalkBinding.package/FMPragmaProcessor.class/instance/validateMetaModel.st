private
validateMetaModel
	| fullDict wronglySetOpposites |
	"Check that opposite link is bijective, i.e. there are not 2 values that references the same opposite."
	fullDict := OrderedCollection new.
	oppositeDict keysAndValuesDo: [ :prop :oppName | fullDict add: (prop type attributeNamed: oppName) -> prop ].
	wronglySetOpposites := (fullDict groupedBy: #key) select: [ :e | e size ~= 1 ].
	self assert: wronglySetOpposites isEmpty description: 'Link to opposite links should be a bijective operation... Please check your model!'.
	self
		assert: ((fullDict groupedBy: #key) at: nil ifAbsent: [ #() ]) isEmpty
		description: 'Some opposite links are not definied in your model.. Please check your model!'
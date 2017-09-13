*OpenPonk-ClassEditor
unappliedFrom: anElement as: aName
	(self tags at: #base ifAbsentPut: [ OrderedDictionary new ])
		removeKey: aName
		ifAbsent: [  ]
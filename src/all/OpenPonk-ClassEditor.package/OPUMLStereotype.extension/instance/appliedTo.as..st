*OpenPonk-ClassEditor
appliedTo: anElement as: aName
	(self tags at: #base ifAbsentPut: [ OrderedDictionary new ]) at: aName put: anElement
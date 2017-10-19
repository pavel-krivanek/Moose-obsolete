figures
removeModel
	self remove.
	model general: nil.
	model specific: nil.
	model generalizationSets asArray do: [ :each | each generalizations remove: model ]
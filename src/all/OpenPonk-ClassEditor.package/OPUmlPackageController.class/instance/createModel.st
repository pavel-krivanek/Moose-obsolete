construction
createModel
	| newModel names |
	newModel := self modelClass new.
	names := {OPUMLPackage -> 'Package'.
	OPUMLModel -> 'Model'.
	OPUMLProfile -> 'Profile'} asDictionary.
	newModel name: (names at: newModel class).
	^ newModel
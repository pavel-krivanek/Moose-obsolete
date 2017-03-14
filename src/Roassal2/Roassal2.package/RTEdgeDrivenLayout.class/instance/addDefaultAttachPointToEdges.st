default attach points
addDefaultAttachPointToEdges
	edges do: [ :e | e shape attachPoint: self defaultAttachPoint ]
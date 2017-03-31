private
emitStartGroupingsForLocationPath: aLocationPath
	aLocationPath hasSteps
		ifTrue: [
			1 to: aLocationPath steps size do: [:i |
				self emit: $(]]
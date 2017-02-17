actions
distributeRequiredInputs
	wizardParts do: [:wizardPart |
		(partsAndRequiredInformations at: wizardPart ifAbsent: [nil]) ifNotNil: [ :collOfSymbols |
			collOfSymbols do: [:symbol |
				self retrieveOutput: symbol.
				wizardPart requiredInputsAt: symbol put: (wizardControl wizardInformations at: symbol ifAbsent: [nil])].
			wizardPart retrieveInputRequired]].
	
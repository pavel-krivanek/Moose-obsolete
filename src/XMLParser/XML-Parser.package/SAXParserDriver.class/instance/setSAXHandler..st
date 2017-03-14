initialization
setSAXHandler: aSAXHandler
	saxHandler := aSAXHandler.
	doctypeDefinition := self doctypeDefinitionClass new.
	validator := (aSAXHandler schema ifNil: [doctypeDefinition]) newValidator.
	elementNester := self elementNesterClass new.
	externalSubsetPublicID := ''.
	externalSubsetSystemID := ''.
	isStandalone := false.
	isHandlingDTD := false.
	hasParameterEntityReferences := false.
	hasSkippedParameterEntityReferences := false.
	hasUnhandledReservedAttributes := false.
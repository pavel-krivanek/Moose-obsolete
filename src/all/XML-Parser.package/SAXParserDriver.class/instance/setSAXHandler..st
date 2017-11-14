initialization
setSAXHandler: aSAXHandler
	saxHandler := aSAXHandler.
	doctypeDefinition := self doctypeDefinitionClass new.
	validator := (aSAXHandler schema ifNil: [doctypeDefinition]) newValidator.
	elementNester := self newElementNester.
	externalSubsetPublicID := ''.
	externalSubsetSystemID := ''.
	"these are copied to inst vars for faster access"
	isValidating := aSAXHandler isValidating.
	usesNamespaces := aSAXHandler usesNamespaces.
	isStandalone := false.
	hasParameterEntityReferences := false.
	hasSkippedParameterEntityReferences := false.
	hasUnhandledReservedAttributes := false.
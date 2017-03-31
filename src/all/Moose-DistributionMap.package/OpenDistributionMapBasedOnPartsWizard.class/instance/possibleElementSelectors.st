computing possible elements
possibleElementSelectors

	"here we compute types of elements that can be displayed. Given the type of the parts, all type 'contained' in this one can be used as elements. Return a string list of selectors that can be applied to parts to compute elements. This list is ready to be set to the elements-dropListWizardPart  "
	| partsMetaClass  result |
	partsMetaClass := self groupMetaClass .
	result := OrderedCollection new.
	result addAll: partsMetaClass allComplexAttributes.
	result := result select: [:each | each isMultivalued].
	result := self removeAllNonComputableAttributesFrom: result.
	^ result.
	
copying
copyForBehaviorDefinition

	"returns copy of the behavior model that contains only information related to the behavior 
	definition"
	<ignoreForMutations> "removing of ^ can cause infinite loops"
	^ self shallowCopy copyForBehaviorDefinitionPostCopy
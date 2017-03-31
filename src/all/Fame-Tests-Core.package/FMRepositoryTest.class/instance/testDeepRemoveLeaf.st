running
testDeepRemoveLeaf
	t metamodel addAll: t metaMetamodel elements.
	t metamodel deepRemove: t metaMetamodel properties anyOne.
	t metamodel isEmpty should beTrue
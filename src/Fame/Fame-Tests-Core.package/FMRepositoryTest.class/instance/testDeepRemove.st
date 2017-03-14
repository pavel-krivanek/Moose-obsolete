running
testDeepRemove
	t metamodel addAll: t metaMetamodel elements.
	t metamodel deepRemove: t metaMetamodel packages anyOne.
	t metamodel isEmpty should beTrue
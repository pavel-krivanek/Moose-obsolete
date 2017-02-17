running
testCompositeRemove
	t metamodel addAll: t metaMetamodel elements.
	t metamodel compositeRemove: t metaMetamodel packages anyOne.	"= a root element."
	t metamodel isEmpty should beTrue
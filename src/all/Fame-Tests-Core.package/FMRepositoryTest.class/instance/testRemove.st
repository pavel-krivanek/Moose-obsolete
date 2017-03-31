running
testRemove
	| element |
	element := t metaMetamodel packages anyOne.
	t metamodel add: element.
	t metamodel remove: element.
	t metamodel isEmpty should beTrue
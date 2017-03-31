examples-extensions
withDeepRelationDo: graph
	<gtExample>
	<dependsOn: #graph1>
	
	| relationTrace |
	relationTrace := OrderedCollection new.

	1 
		withDeep: [ :each | self nextElementsFor: each inGraph: graph ] 
		relationDo: [ :from :to | relationTrace add: from->to ].
	self assert: relationTrace = { 1->2 . 1->3 . 2->3 } asOrderedCollection.
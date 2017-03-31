private
assert: aResult graph: aDictionary iterator: aClass start: start
	| result iterator |
	self shouldnt: [ 
		result := OrderedCollection new.
		iterator := aClass new 
			on: aDictionary startWith: start;
			onNodeTraverse: [ :e | aDictionary at: e ifAbsent: [ #() ] ];
			onNodeAction: [ :e | result add: e ];
			yourself.
		iterator run ] raise: Error.
	self assert: result asArray = aResult asArray
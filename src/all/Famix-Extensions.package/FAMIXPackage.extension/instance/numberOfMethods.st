*famix-extensions
numberOfMethods
	<MSEProperty: #numberOfMethods type: #Number>
	<MSEComment: 'The number of methods in a package'>
	<derived>
	^ self
		lookUpPropertyNamed: #numberOfMethods
		computedAs: [ self types inject: 0 into: [ :sum :each | sum + each numberOfMethods ] ]
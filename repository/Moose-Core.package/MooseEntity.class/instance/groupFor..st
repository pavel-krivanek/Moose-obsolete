groups
groupFor: aSelector
	"Return a group containing elements corresponding to aSelector"
	"aSelector = allPackages, allClasses, allMethods, ... "

	| res groupName |
	res := self perform: aSelector.
	groupName := aSelector asString capitalized, ' in ', self mooseName.
	^ res isCollection
			ifTrue: [ MooseGroup withAll: res withDescription: groupName ]
			ifFalse: [ MooseGroup with: res withDescription: groupName ]

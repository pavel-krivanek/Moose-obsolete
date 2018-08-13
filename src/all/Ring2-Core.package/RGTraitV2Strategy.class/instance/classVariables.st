private - backend access
classVariables

	| allClassVariables |
	allClassVariables := OrderedCollection new.
	self classVariablesDo: [ :each | allClassVariables add: each].
	^ allClassVariables asArray
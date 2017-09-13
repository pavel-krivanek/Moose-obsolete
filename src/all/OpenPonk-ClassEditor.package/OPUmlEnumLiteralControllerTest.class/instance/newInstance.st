instance creation
newInstance
	| instance |
	instance := self modelClass new.
	instance name: 'enumLiteral'.
	^ instance
*SmallDude-Moose-ui
allMultiplications
	<navigation: 'All multiplications'>
	| all |
	all := self mooseModel allMultiplications.
	^ all notEmpty
		ifTrue: [ all selectWhereAnyFragment: [ :frag | self includes: frag entity modelEntity ] ]
		ifFalse: [ MooseGroup new ]
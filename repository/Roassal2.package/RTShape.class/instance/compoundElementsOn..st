public
compoundElementsOn: models
	| group |
	group := RTGroup new.
	models do: [ :m | group add: (self compoundElementOn: m) ].
	^ group
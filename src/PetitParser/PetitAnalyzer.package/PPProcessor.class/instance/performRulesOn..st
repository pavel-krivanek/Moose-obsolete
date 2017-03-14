private
performRulesOn: aParser
	| result |
	searches do: [ :rule |
		result := self performRule: rule on: aParser.
		result notNil ifTrue: [ ^ result ] ].
	^ nil
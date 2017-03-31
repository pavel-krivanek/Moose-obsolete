registration
gtToProductionActionFor: aDebugger
	<gtPPDebuggingAction>
	<gtContextPPDebuggingAction>
	| order allParserSuperclasses showedProductions actions |

	order := 500.
	actions := OrderedCollection new.
	showedProductions := OrderedCollection new.

	(allParserSuperclasses := self allParserSuperclassesFor: aDebugger session rootParser class) do: [ :each |
		| productions |
		productions := (aDebugger productionSelectorsFrom: each) copyWithoutAll: showedProductions.
		showedProductions addAll: productions.
		
		actions addAll: (productions collect: [ :aProduction |
			(self forDebugger: aDebugger)
				production: aProduction;
				label: aProduction asString;
				category: 'Next production', (allParserSuperclasses size = 1 ifTrue:[ '' ] ifFalse:[ ' [', each name, ']']);
				order: (order := order + 1) ]) ].
		
	^ actions 
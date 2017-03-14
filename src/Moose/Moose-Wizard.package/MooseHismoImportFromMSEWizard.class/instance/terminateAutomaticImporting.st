wizard panes transition
terminateAutomaticImporting 

	| n datePattern strategySymbol |
	
	strategySymbol := (wizardInformations at: #strategy) asSymbol.
	datePattern := wizardInformations at: #datePattern.
	n := wizardInformations at: #n.
	
	"Include all the mses. They will be selected based on the stategy"
	hismoImporter versions: versions.
	hismoImporter datePattern: datePattern.
	"Setting the strategy. If it contains argument, set it too"
	(strategySymbol numArgs = 0)
		ifTrue: [hismoImporter perform: strategySymbol ]
		ifFalse: [hismoImporter perform: strategySymbol with: n ].
	
	self createHismoModel
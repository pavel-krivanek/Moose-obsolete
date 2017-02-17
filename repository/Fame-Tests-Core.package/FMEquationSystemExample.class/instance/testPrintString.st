running
testPrintString
	| repo systems |
	repo := self testCreateModel.
	systems := repo selectKindOf: EQEquationSystem.
	systems size should = 1.
	systems anyOne printString should = 'X1 = (X2 + X3)\X2 = (X5 + (X3 + X1))\X3 = (X5 + (7 * 5))\' withCRs
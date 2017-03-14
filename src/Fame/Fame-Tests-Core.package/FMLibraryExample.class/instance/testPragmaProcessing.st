examples
testPragmaProcessing
	| pp |
	pp := FMPragmaProcessor new.
	pp queue:
			(Array with: LIBBook
				with: LIBLibrary
				with: LIBPerson).
	pp run.
	pp elements isEmpty should beFalse.
	pp packages isEmpty should beFalse.
	pp packages size should = 1.
	pp packages anyOne name should = #LIB.
	pp classes isEmpty should beFalse.
	pp classes size should = 3.
	pp properties isEmpty should beFalse.
	^ pp
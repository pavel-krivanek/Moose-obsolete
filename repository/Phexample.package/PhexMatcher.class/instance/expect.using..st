private
expect: expected using: aSymbol
	^self expect: [ receiver perform: aSymbol with: expected ]
  		describeShould: [ ('expected <1p> but got <2p> (using <3s>)'
								expandMacrosWith: expected
								with: receiver
								with: aSymbol) ]
  		describeShouldNot: [ ('expected not to get <1p> but got <2p> (using <3s>)'
								expandMacrosWith: expected
								with: receiver
								with: aSymbol) ]

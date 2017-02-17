initialize-release
onClass: aClass 
	theClass := aClass.
	instVars := aClass allInstVarNames collect: [ :e | e asSymbol].
	typingResults := (instVars collect: 
		[ :ivar | 
		ExtractedType 
			forInstvar: ivar
			inClass: aClass ]) asArray.
	localTypingResults := IdentityDictionary new.
	theClass selectorsAndMethodsDo: [:sel :cm | 
	localTypingResults 
			at: cm
			put: ((1 to: cm numTemps + 1) collect:  "the last one is for the method returned object"
				[ :i | 
				ExtractedTypeForTmp 
					forTmpOffset: i ofCompiledMethod:  cm inClass: theClass ]) asArray]
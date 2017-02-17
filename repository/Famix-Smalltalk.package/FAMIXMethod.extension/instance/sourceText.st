*Famix-Smalltalk
sourceText
	self flag: 'This code should be delegated to the FAMIXPharoAnchor'.
	^ self sourceLanguage isSmalltalk
			ifTrue: [
				[ |class|
					"take the normal class"
					class := Smalltalk at: self parentType instanceSide name asSymbol.
					self hasClassScope "dispatch on class or metaclass depending on method scope"
						ifFalse: [ class sourceCodeAt: self name asSymbol ]
						ifTrue: [ class class sourceCodeAt: self name asSymbol ]
				] 	on: Error "probably class is not in the system"
					do: [ super sourceText ]]
			ifFalse: [ super sourceText ]
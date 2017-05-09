hooks
extendPlayground: aGLMPharoScriptPresentation
	"Extend the Playground presentation with other actions."

	| pragmas |
	pragmas := Pragma allNamed: #playgroundExtension in: self class.
	pragmas
		do: [ :eachPragma | 
			self
				perform: eachPragma methodSelector
				with: aGLMPharoScriptPresentation ]
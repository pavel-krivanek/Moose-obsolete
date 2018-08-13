tests
testLayouts

	| env layout |
	
	env := RGEnvironment new.
	env backend: (RGReadOnlyImageBackend for: env).
	
	layout := (ByteString asRingMinimalDefinitionIn: env) layout.
	self assert: layout isLayout.
	self assert: layout isByteLayout.

	layout := (WordArray asRingMinimalDefinitionIn: env) layout.
	self assert: layout isLayout.
	self assert: layout isWordLayout.	

	layout := (CompiledMethod asRingMinimalDefinitionIn: env) layout.
	self assert: layout isLayout.
	self assert: layout isCompiledMethodLayout.	

	layout := (CompiledMethod asRingMinimalDefinitionIn: env) layout.
	self assert: layout isLayout.
	self assert: layout isCompiledMethodLayout.				
		
	layout := (SmallInteger asRingMinimalDefinitionIn: env) layout.
	self assert: layout isLayout.
	self assert: layout isImmediateLayout.				
		
	layout := (Ephemeron asRingMinimalDefinitionIn: env) layout.
	self assert: layout isLayout.
	self assert: layout isEphemeronLayout.				

	layout := (Object asRingMinimalDefinitionIn: env) layout.
	self assert: layout isLayout.
	self assert: layout isFixedLayout.				

	layout := (Array asRingMinimalDefinitionIn: env) layout.
	self assert: layout isLayout.
	self assert: layout isVariableLayout.				

	layout := (WeakArray asRingMinimalDefinitionIn: env) layout.
	self assert: layout isLayout.
	self assert: layout isWeakLayout.				

			
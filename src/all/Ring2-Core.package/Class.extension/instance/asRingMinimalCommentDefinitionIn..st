*Ring2-Core
asRingMinimalCommentDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: ('classComment:', self name) asSymbol ifAbsentRegister: [
		RGComment parent: (self asRingMinimalDefinitionIn: anRGEnvironment).
	]. 
	
utilities
installGTDebuggers
	GTGenericStackDebugger registerToolsOn: Smalltalk tools.
	GTGenericStackDebugger registerExtraToolsOn: Smalltalk tools.
	GTGlamourDebugger registerToolsOn: Smalltalk tools.
	#GTPPDebugger asClassIfPresent: [ :ppDebugger | ppDebugger registerToolsOn: Smalltalk tools ].
	#ACGlamourDebugger asClassIfPresent: [ :acdDebugger | acdDebugger register ].
	#GTBytecodeDebugger asClassIfPresent: [ :bytecodeDebugger | bytecodeDebugger registerToolsOn: Smalltalk tools ].
	GTSUnitDebugger registerToolsOn: Smalltalk tools.
	GTMoldableDebugger enableDebuggerWindowDistinctColor: true
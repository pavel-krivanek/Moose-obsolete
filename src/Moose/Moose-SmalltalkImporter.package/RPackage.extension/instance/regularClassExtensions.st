*Moose-SmalltalkImporter
regularClassExtensions

	^ self extensionMethods reject: [:aCompiledMethod | aCompiledMethod methodClass isTrait]
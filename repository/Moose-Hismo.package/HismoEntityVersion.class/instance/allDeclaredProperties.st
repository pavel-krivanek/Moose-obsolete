public interface
allDeclaredProperties
	
	| ownProperties |
	ownProperties := super allDeclaredProperties copy.
	ownProperties addAll: self versionEntity allDeclaredProperties.
	^ownProperties
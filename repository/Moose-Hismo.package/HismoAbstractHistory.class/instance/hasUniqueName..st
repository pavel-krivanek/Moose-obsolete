public interface
hasUniqueName: aSymbol
	"answers whether any of the versions has the  unique name given by aSymbol"
	
	^(self versions collect: [:each | each versionEntity historicalUniqueName])
		includes: aSymbol
public interface
hasName: aSymbol
	"answers whether any of the versions has the name given by aSymbol"
	
	^(self versions collect: [:each | each versionEntity name]) includes:
			aSymbol
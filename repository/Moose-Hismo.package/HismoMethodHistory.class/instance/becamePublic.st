public interface
becamePublic
	
	^self accessControlQualifierVersions first ~= #public
		& (self accessControlQualifierVersions last = #public)
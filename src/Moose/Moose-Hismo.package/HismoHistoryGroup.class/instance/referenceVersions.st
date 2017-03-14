public interface
referenceVersions
	
	| versionsNamesSet |
	versionsNamesSet := Set new.
	self entities
		do:
			[:eachHistory | 
			| tempVersionsNames |
			tempVersionsNames := eachHistory versions
				collect: [:eachVersion | eachVersion referenceVersion].
			versionsNamesSet addAll: tempVersionsNames].
	^versionsNamesSet asSortedCollection
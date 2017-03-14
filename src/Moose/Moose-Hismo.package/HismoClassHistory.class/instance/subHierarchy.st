public interface
subHierarchy
	
	| hierarchy |
	hierarchy := IdentitySet new.
	self directSubHistories
		do:
			[:each | 
			hierarchy add: each.
			hierarchy addAll: each subHierarchy].
	^hierarchy
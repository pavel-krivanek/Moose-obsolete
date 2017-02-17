public interface
intersectWith: aGroup
	
	^self select: [:each | aGroup includes: each]
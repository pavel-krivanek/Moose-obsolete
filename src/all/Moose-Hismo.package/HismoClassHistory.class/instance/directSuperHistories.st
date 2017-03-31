public interface
directSuperHistories
	<navigation: 'direct super-histories'>
	| supers |
	supers := MooseGroup new.
	(self referenceHistory allInheritanceDefinitionHistories
		select: [:each | each subHistory = self])
		collect: [:each | supers add: each superHistory].
	^supers
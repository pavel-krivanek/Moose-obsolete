public interface
directSubHistories
	<navigation: 'direct sub-histories'>
	| subs |
	subs := MooseGroup new.
	(self referenceHistory allInheritanceDefinitionHistories
		select: [:each | each superHistory = self])
		collect: [:each | subs add: each subHistory].
	^subs
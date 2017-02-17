private
cleanedAssignments
	| assigns |
	assigns := self assignments copy.
	((assigns includes: True) or: [assigns includes: False])
		ifTrue:
			[assigns
				remove: True ifAbsent: [];
				remove: False ifAbsent: [];
				add: Boolean].
	^assigns
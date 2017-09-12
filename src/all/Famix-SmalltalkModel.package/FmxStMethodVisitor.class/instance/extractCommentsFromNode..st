visitor-double dispatching
extractCommentsFromNode: aSequenceNode

	| comment |
	importer importingContext shouldImportComment
		ifTrue:
			[aSequenceNode comments
				do:
					[:eachComment | 
					comment := FmxStComment new.
					comment content: (aSequenceNode source 
										copyFrom: eachComment start
										to: eachComment stop) asString.
					comment container: self methodEntity.
					importer addEntity: comment]]
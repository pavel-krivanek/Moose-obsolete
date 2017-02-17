accessing
theTag
	theTag ifNil: [ 
		RPackageOrganizer default packages do: [ :package |
			package classTags do: [ :tag | 
				(tag name = theTagName
					or: [ tag categoryName = theTagName ]) ifTrue: [ 
						^ theTag := tag ] ] ] ].
	^ theTag
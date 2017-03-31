accessing-common attributes
description 
	 
	| entity | 
	^self 
		attributeAt: #privateDescription 
		ifAbsent: 
			[entity := self entity. 
			entity mooseName , ' (' , entity mooseDescription name , ')']
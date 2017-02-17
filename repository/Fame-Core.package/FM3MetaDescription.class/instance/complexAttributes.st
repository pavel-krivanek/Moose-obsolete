accessing-query
complexAttributes

	^ self attributes reject: [:attr | attr type isPrimitive ]
private
announcer
	^ self privateState attributeAt: #announcer ifAbsentPut: [Announcer new]
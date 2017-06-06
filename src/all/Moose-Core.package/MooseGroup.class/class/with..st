instance creation
with: anEntity
	^ anEntity ifNil: [ self new ] ifNotNil: [ self withAll: (Array with: anEntity) ]
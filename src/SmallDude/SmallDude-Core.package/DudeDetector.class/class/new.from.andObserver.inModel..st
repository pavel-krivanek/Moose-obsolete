initialize-release
new: entitySpecie from: entities andObserver: anObserver inModel: aModel
	^ self
		new: entitySpecie
		from: entities
		withStrategy: [ :string1 :string2 | string1 notEmpty and: [ string1 = string2 ] ]
		andObserver: anObserver
		inModel: aModel
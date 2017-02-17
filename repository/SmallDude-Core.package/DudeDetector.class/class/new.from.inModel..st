initialize-release
new: entitySpecie from: entities inModel: aModel
	^ self
		new: entitySpecie
		from: entities
		withStrategy: [ :string1 :string2 | string1 notEmpty and: [ string1 = string2 ] ]
		andObserver: DudeObserver default
		inModel: aModel
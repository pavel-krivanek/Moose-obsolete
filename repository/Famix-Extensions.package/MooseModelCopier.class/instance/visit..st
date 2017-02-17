running
visit: anEntity
	anEntity ifNil: [ ^ nil ].
	^ table 	at: anEntity
				ifAbsentPut: [|newEntity|
					newEntity := model add: anEntity class new.
					newEntity copyFrom: anEntity within: self.
					newEntity ]
		"#copyFrom:within: should copy basic attributes like name, then will visit relations and check with #ensure: or #visit: to link entities and visit them if necessary"
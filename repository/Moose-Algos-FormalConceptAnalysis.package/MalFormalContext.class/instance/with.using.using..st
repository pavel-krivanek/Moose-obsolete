initialize-release
with: collection using: foBlock using: faBlock
	
	| dict fobject fattribute |
	dict := Dictionary new.
	fobjects := "ArrayList"OrderedCollection new.
	fattributes := "ArrayList"OrderedCollection new.
	collection
		do:
			[:eachFo | 
			fobject := MalFCAElement with: (foBlock value: eachFo).
			fobject appendTo: fobjects.
			(faBlock value: eachFo)
				do:
					[:eachFa | 
					fattribute := dict
						at: eachFa
						ifAbsentPut:
							[fattribute := MalFCAElement with: eachFa.
							fattribute appendTo: fattributes].
					fattribute setBit: fobject.
					fobject setBit: fattribute]]
accessing
columnAt: aNumber

	^ (1 to: objectsY size) collect: [ :i | self elementAt: aNumber @ i ]
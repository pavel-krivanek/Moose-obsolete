tests
testXMLDeclarations
	| writer |

	(writer := XMLWriter new)
		xml.
	writer xml
		version: '1.0'.
	writer xml
		version: 1.0.
	writer xml
		version: '1.101';
		encoding: 'UTF-16';
		standalone: false.
	writer xml
		version: '1.01';
		standalone: true.
	writer xml
		version: 1.101;
		encoding: 'UTF-16LE';
		standalone: 'yes'.
	writer xml
		version: 1.01;
		standalone: 'no'.
	writer xml
		version: '';
		encoding: '';
		standalone: ''.

	self assert:
		writer printString =
			('<?xml version="1.0"?>',
			'<?xml version="1.0"?>',
			'<?xml version="1.0"?>',
			'<?xml version="1.1" encoding="UTF-16"?>',
			'<?xml version="1.0" standalone="yes"?>',
			'<?xml version="1.1" encoding="UTF-16LE" standalone="yes"?>',
			'<?xml version="1.0"?>',
			'<?xml version="1.0"?>').
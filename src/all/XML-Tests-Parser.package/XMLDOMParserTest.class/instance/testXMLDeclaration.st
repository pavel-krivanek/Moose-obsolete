tests
testXMLDeclaration
	| document |

	document :=
		XMLDOMParser parse:
			'<?xml version="1.0" encoding="UTF-8"?><test/>'.
	self
		assert: document version = 1.0;
		assert: document encoding = 'UTF-8';
		deny: document isStandalone.

	document :=
		XMLDOMParser parse:
			'<?xml version="1.1" encoding="utf-8" standalone="yes"?><test/>'.
	self
		assert: document version = 1.1;
		assert: document encoding = 'utf-8';
		assert: document isStandalone.
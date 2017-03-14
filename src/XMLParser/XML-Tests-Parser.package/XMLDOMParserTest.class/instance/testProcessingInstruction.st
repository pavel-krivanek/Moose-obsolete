tests
testProcessingInstruction
	| document |

	document :=
		XMLDOMParser parse:
			'<?xml version="1.1" standalone="yes"?><?firstTarget first>Data?>',
			'<root><?secondTarget second?Data?></root> '.

	self
		assert: document version = 1.1;
		assert: document nodes size = 2;
		assert: document firstNode isPI;
		assert: document firstNode target = 'firstTarget';
		assert: document firstNode data = 'first>Data';
		assert: document root firstNode target = 'secondTarget';
		assert: document root firstNode data = 'second?Data'.
test-lists
testListBullet
	context := PPContext new.
	self parse: '- ' rule: #listBullet.
	self assert: context indentStack size = 1.
	self assert: context indentStack top literal = '  '.
	
	self assert: result = { 'ul' . '- ' }.
	
	context := PPContext new.
	self parse: '   - ' rule: #listBullet.
	
	self assert: result = { 'ul' . '   - ' }.
	self assert: context indentStack size = 1.
	self assert: context indentStack top literal = '     '.
	
	context := PPContext new.
	parser := self parserInstanceFor: #listBullet.
	self assert: parser parse: ' -  ' end: 3.
	
	self assert: result = { 'ul' . '   - ' }.
	self assert: context indentStack size = 1.
	self assert: context indentStack top literal = '    '.
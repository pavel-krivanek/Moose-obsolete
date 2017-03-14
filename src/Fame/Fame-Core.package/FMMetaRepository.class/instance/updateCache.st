private
updateCache

	nameDict := Dictionary new.
	nameDict at: 'String' put: FM3 string.
	nameDict at: 'Boolean' put: FM3 boolean.
	nameDict at: 'Number' put: FM3 number.
	nameDict at: 'Object' put: FM3 object.			
	classDict := Dictionary new.
	classDict at: FM3 string class put: FM3 string.
	classDict at: FM3 boolean class put: FM3 boolean.
	classDict at: FM3 number class put: FM3 number.
	classDict at: FM3 object class put: FM3 object.
	self elements do: [ :each |
		self updateCacheWith: each ]
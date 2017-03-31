as yet unclassified
testProgram3
	self parse: '
	class Foo 
		title = 123
		if () end
	
		def bar
		end
	end'.
	self assert: result size = 1.
	self assert: result first = '::Foo.bar'.
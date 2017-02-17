as yet unclassified
testProgram4
	self parse: '
	require_dependency ''post_creator''	
	
	class Foo 
		title = 123
		if () end
	
		def bar
		end
	end'.
	self assert: result size = 1.
	self assert: result first = '::Foo.bar'.
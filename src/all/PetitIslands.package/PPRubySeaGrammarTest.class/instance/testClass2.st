as yet unclassified
testClass2
	self parse: '
	class Foo 
		def bar
		end
	end'.
	self assert: result size = 1.
	self assert: result first = '::Foo.bar'.
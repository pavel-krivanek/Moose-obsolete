as yet unclassified
testClass3
	self parse: '
	class Foo 
		def bar
		end
		
		def baz
		end
	end'.
	self assert: result size = 2.
	self assert: result first = '::Foo.bar'.
	self assert: result second = '::Foo.baz'.	
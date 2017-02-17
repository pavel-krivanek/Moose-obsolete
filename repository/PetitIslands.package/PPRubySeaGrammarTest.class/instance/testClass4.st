as yet unclassified
testClass4
	self parse: '
	class Foo 
		def bar
		end
		
		some mess
		
		def baz
		end
	end'.
	self assert: result size = 2.
	self assert: result first = '::Foo.bar'.
	self assert: result second = '::Foo.baz'.	
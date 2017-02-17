as yet unclassified
testNestedClass1
	self parse: '
	class Foo 
		def bar
		end
		
		class Baz
			def bazz
			end
		end
		
		def bazz
		end
		
	end'.
	self assert: result size = 3.
	self assert: result first = '::Foo.bar'.
	self assert: result second = '::Foo::Baz.bazz'.
	self assert: result third = '::Foo.bazz'.	
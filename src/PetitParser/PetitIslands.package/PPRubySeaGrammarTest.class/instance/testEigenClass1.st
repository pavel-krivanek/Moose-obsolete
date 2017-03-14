as yet unclassified
testEigenClass1
	self parse: '
	class Foo 
		def bar()
		end
		
		class << self
			def baz
				yet "another" string
			end
		
			def bag
			end
		end
	end'.
	self assert: result size = 3.
	self assert: result first = '::Foo.bar'.
	self assert: result second = '::Foo.self.baz'.	
	self assert: result third = '::Foo.self.bag'
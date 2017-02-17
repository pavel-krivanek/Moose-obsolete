as yet unclassified
testClass6
	"
	The known case when the Island Indent Parser fails
	"
"
	self parse: '
module Plugins
	class Foo 
		class Bar < Barr; end
		def baz()
			if something
				return true if whatever
			end
		end
	end
end'.
	self assert: result size = 1.
	self assert: result first = '::Plugins::Foo.baz'.
"
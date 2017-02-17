as yet unclassified
testProgram6
	self parse: '
class Bar
   def foo	
    [case duration
      when a
        created_at
      when b
        previous_visit_at
      else
        duration.minutes.ago
      end, user_stat.new_since].max
   end
end'.
	self assert: result first = '::Bar.foo'.

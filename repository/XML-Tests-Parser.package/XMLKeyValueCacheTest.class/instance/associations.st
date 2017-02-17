accessing
associations
	| associations |

	associations := Array new: self maxSize.
	1 to: associations size do: [:i |
		associations
			at: i
			put: ('key', i asString) -> ('value', i asString)].
	^ associations.
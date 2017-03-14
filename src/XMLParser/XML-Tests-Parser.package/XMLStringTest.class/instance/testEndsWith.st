tests
testEndsWith
	| stringNode |

	stringNode := self nodeClass string: 'test'.
	0 to: stringNode string size - 1 do: [:i | | suffix |
		suffix := stringNode string allButFirst: i.
		self
			assert: (stringNode endsWith: suffix);
			assert: (stringNode endsWith: (self nodeClass string: suffix));
			deny: (stringNode endsWith: (suffix copyWithFirst: $.));
			deny: (stringNode endsWith: (self nodeClass string: (suffix copyWithFirst: $.)))].
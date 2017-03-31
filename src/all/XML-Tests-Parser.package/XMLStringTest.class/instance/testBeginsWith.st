tests
testBeginsWith
	| stringNode |

	stringNode := self nodeClass string: 'test'.
	0 to: stringNode string size - 1 do: [:i | | prefix |
		prefix := stringNode string allButLast: i.
		self
			assert: (stringNode beginsWith: prefix);
			assert: (stringNode beginsWith: (self nodeClass string: prefix));
			deny: (stringNode beginsWith: (prefix copyWith: $.));
			deny: (stringNode beginsWith: (self nodeClass string: (prefix copyWith: $.)))].
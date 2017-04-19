comparing
hash
	"ignores user-info and ports"
	^ ((((self species hash bitXor:
		self scheme hash) bitXor:
			self host hash) bitXor:
				self pathSegments hash) bitXor:
					self query hash) bitXor:
						self fragment hash
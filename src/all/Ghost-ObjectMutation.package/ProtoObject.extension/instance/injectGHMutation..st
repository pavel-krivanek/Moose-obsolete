*Ghost-ObjectMutation
injectGHMutation: anObjectMutation
	| helper |
	helper := self class newAnonymousSubclass.
	
	GHMetaMessages setClass: helper to: self.
	helper becomeForward: anObjectMutation 
SmaCCAmbiguousAction represents several conflicting actions for a state/symbol. If we are creating a GLR parser then all actions will be performed. Otherwise, we'll pick one of the actions to be performed preferring shift actions over reduce actions.
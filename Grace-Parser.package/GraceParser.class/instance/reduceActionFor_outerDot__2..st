generated-reduction actions
reduceActionFor_outerDot__2: nodes
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
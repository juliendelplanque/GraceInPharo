generated-reduction actions
reduceActionForRequestWithArguments3: nodes
	| result |
	result := GraceRequestWithArgumentsNode new.
	result addToken: (nodes at: 1) to: result requestParts.
	result addNode: (nodes at: 2) to: result argLists.
	result addTokens: ((nodes at: 3) at: 1) to: result requestParts.
	result addNodes: ((nodes at: 3) at: 2) to: result argLists.
	^ result
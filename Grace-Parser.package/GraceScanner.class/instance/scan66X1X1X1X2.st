generated
scan66X1X1X1X2
	(currentCharacter <= Character arrowDown
		or: [ currentCharacter == $!
				or: [ (currentCharacter between: $# and: $&)
						or: [ (currentCharacter between: $( and: $-)
								or: [ currentCharacter == $/
										or: [ (currentCharacter between: $: and: $@)
												or: [ currentCharacter == $[
														or: [ (currentCharacter between: $] and: $^)
																or: [ currentCharacter == $`
																		or: [ (currentCharacter between: $| and: (Character value: 159))
																				or: [ currentCharacter >= (Character value: 161) ] ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch
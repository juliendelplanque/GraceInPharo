generated
scan73X2
	self recordMatch: #(40 55).
	self step.
	currentCharacter == $>
		ifTrue:
			[ ^ self scan73X2X1 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ currentCharacter == $:
										or: [ (currentCharacter between: $< and: $=)
												or: [ (currentCharacter between: $? and: $@)
														or:
															[ '\^|~' includes: currentCharacter ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan79 ].
	^ self scan73X2X3
generated
scan1X4X3
	self step.
	currentCharacter == $>
		ifTrue:
			[ ^ self scan1X4X1 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ currentCharacter == $:
										or: [ (currentCharacter between: $< and: $=)
												or: [ (currentCharacter between: $? and: $@)
														or: [ ('\^|~÷' includes: currentCharacter)
																or: [ currentCharacter =
																		(Character value: 8800)
																		or: [ (currentCharacter
																				between: (Character value: 8804)
																				and: (Character value: 8805))
																				or: [ currentCharacter =
																						(Character value: 8901) ] ] ] ] ] ] ] ] ] ])
		ifTrue:
			[ self scan1X4X2 ].
	^ self reportLastMatch
generated
scan24X4
	self recordMatch: #(42 59).
	self step.
	currentCharacter == $/
		ifTrue: [ ^ self scan32 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan31 ].
	(currentCharacter isDashPunctuation
		or: [ currentCharacter == $!
				or: [ (currentCharacter between: $# and: $&)
						or: [ (currentCharacter between: $* and: $+)
								or: [ ('.:' includes: currentCharacter)
										or: [ (currentCharacter between: $< and: $@)
												or: [ ('^|~' includes: currentCharacter)
														or: [ (currentCharacter
																between: (Character value: 8804)
																and: (Character value: 8805))
																or: [ currentCharacter = (Character value: 8901) ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan30 ].
	^ self scan24X4X1
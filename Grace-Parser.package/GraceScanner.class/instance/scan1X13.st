generated
scan1X13
	[ self recordMatch: #(55).
	self step.
	currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ ('µæ' includes: currentCharacter)
												or: [ currentCharacter =
														(Character value: 960) ] ] ] ] ] ] ] whileTrue
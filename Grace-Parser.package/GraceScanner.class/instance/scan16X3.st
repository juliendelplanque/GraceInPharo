generated
scan16X3
	[ self recordMatch: #(53).
	self step.
	currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ]
		whileTrue
generated
scan111X1X1
	self recordMatch: #(44 54).
	self step.
	currentCharacter == $w
		ifTrue:
			[ ^ self scan111X1X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $v)
										or: [ (currentCharacter between: $x and: $z)
												or: [ ('µæ' includes: currentCharacter)
														or: [ currentCharacter =
																(Character value: 960) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan108 ].
	^ self scan111X1X1X3
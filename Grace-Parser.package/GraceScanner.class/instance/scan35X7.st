generated
scan35X7
	self recordMatch: #(43 54).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	currentCharacter == $s
		ifTrue: [ ^ self scan35X7X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $r)
										or: [ (currentCharacter between: $t and: $z)
												or: [ ('µæ' includes: currentCharacter)
														or: [ currentCharacter = (Character value: 960) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan46 ].
	^ self scan35X7X2
Class {
	#name : #CSSUrlValue,
	#superclass : #CSSValue,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSUrlValue class >> readFrom: aStream [

	| s pos |
	aStream skipSeparators.
	pos := aStream position.
	(aStream match: 'url(' ) ifTrue: [s := aStream upTo: $)]
	ifFalse:
	[
		aStream position: pos.
		aStream peek = $' ifTrue: [aStream next. s:= aStream upTo: $']
		ifFalse: 
		[
			aStream peek = $" ifTrue: [aStream next. s:= aStream upTo: $"]
			ifFalse:
			[
				^nil 
			]
		]
	].
	^self new valueString: s unquoted. 
	
]

{ #category : #'as yet unclassified' }
CSSUrlValue >> isValid [

	^true.
]

{ #category : #'as yet unclassified' }
CSSUrlValue >> value [

	| s |

	s := valueString trimBoth.

	^self isValid ifTrue:
	[
		(s beginsWith: 'url(') ifTrue:
		[
			s := s last: s size - 4.
			s := s first: s size - 1.
			s := s trimBoth unquoted.
		]
		ifFalse: [ s unquoted ]
	]
	ifFalse: ['']
]

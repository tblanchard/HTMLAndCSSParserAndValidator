Class {
	#name : #CSSAtRule,
	#superclass : #CSSRule,
	#category : #'HTML-CSS'
}

{ #category : #'instance creation' }
CSSAtRule class >> named: aString [

	| out cls |

	out := WriteStream on: String new.
	out nextPutAll: 'CSSAt'.
	out nextPut: aString first asUppercase.
	out nextPutAll: (aString last: aString size -1).
	out nextPutAll: 'Rule'.

	cls := Smalltalk at: out contents asSymbol ifAbsent:[nil].

	^cls new.
]

{ #category : #'as yet unclassified' }
CSSAtRule >> parseContents: aStream [

	| s |

	s := aStream upTo: $;.
	(s includes: ${) ifTrue: [aStream position: self start. aStream upTo: $}].
	self end: aStream position.
	
]

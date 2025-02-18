Class {
	#name : #CSSAttributeIncludesSelector,
	#superclass : #CSSAttributeSelector,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSAttributeIncludesSelector >> matches: aNode [

	| attr |

	attr := self privateAttributeKeyInNode: aNode.

	^attr isNil 
		ifTrue: [false]
		ifFalse: 
		[
			(((aNode attributes at: attr) findTokens: ' ') 
				collect: [:ea | ea unquoted])
					includes: self value unquoted
		]
]

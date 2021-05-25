"
Mixta
"
Class {
	#name : #TopografiaMixta,
	#superclass : #Topografia,
	#instVars : [
		'topografia1',
		'topografia2',
		'topografia3',
		'topografia4'
	],
	#category : #'TP3 - 3 topografia-Manifest'
}

{ #category : #'private - accessing' }
TopografiaMixta >> distribucion [ 

	^( '{ ', topografia1 distribucion, ' ', topografia2 distribucion, ' ', 
			topografia3 distribucion, ' ', topografia4 distribucion, ' }' )
]

{ #category : #accesing }
TopografiaMixta >> proporcionDeAgua [ 

	^( topografia1 proporcionDeAgua + topografia2 proporcionDeAgua + 
			topografia3 proporcionDeAgua + topografia4 proporcionDeAgua ) / 4
]

{ #category : #accesing }
TopografiaMixta >> proporcionDeTierra [

	^( topografia1 proporcionDeTierra + topografia2 proporcionDeTierra + 
			topografia3 proporcionDeTierra + topografia4 proporcionDeTierra ) / 4
]

{ #category : #'private - initialization' }
TopografiaMixta >> topografia1: tp1 topografia2: tp2 topografia3: tp3 topografia4: tp4 [

	"No es correcto construir una topografia compuesta por cuatro topografias del mismo tipo"

	topografia1 := tp1.
	topografia2 := tp2.
	topografia3 := tp3.
	topografia4 := tp4.
	
	^ self
]

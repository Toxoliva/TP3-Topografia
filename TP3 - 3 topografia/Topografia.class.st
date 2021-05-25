"
Clase que reprecenta una extencion de tierra o agua, en distintas cantidades.
Las proporciones siempre estan entre 0 y 1.
"
Class {
	#name : #Topografia,
	#superclass : #Object,
	#category : #'TP3 - 3 topografia-Manifest'
}

{ #category : #'instance creation' }
Topografia class >> agua [

 ^( TopografiaBasica new proporcionDeAgua: 1 proporcionDeTierra: 0 )
]

{ #category : #'instance creation' }
Topografia class >> tierra [

 ^( TopografiaBasica new proporcionDeAgua: 0 proporcionDeTierra: 1 )
]

{ #category : #'instance creation' }
Topografia class >> topografia1: tp1 topografia2: tp2 topografia3: tp3 topografia4: tp4 [

 ^( TopografiaMixta new topografia1: tp1 topografia2: tp2 topografia3: tp3 topografia4: tp4 )
]

{ #category : #comparing }
Topografia >> = aTopografia [

 ^( self proporcionDeAgua = aTopografia proporcionDeAgua ) & 
		( self proporcionDeTierra  = aTopografia proporcionDeTierra ) &
				( self distribucion = aTopografia distribucion )
]

{ #category : #'private - accessing' }
Topografia >> distribucion [ 

	^SubclassResponsibility 	
]

{ #category : #accesing }
Topografia >> proporcionDeAgua [ 

	^SubclassResponsibility 
]

{ #category : #accesing }
Topografia >> proporcionDeTierra [

	^SubclassResponsibility 
]

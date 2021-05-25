"
Agua o tierra
"
Class {
	#name : #TopografiaBasica,
	#superclass : #Topografia,
	#instVars : [
		'proporcionAgua',
		'proporcionTierra'
	],
	#category : #'TP3 - 3 topografia-Manifest'
}

{ #category : #'private - accessing' }
TopografiaBasica >> distribucion [

	"Devolvera un codigo que reprecentara si es tierra o agua"

	^( proporcionAgua asString , proporcionTierra asString )
]

{ #category : #accesing }
TopografiaBasica >> proporcionDeAgua [

 ^proporcionAgua  
]

{ #category : #'private - initialization' }
TopografiaBasica >> proporcionDeAgua: real1 proporcionDeTierra: real2 [

"No hago comprobacion que los numeros sean mayores a 1 o menores que 0"

proporcionAgua:= real1.
proporcionTierra := real2
]

{ #category : #accesing }
TopografiaBasica >> proporcionDeTierra [

 ^proporcionTierra  
]

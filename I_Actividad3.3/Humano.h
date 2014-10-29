//
//  Humano.h
//  I_Actividad3.3
//
//  Created by Javi on 29/10/14.
//  Copyright (c) 2014 javi. All rights reserved.
//

#import "Persona.h"

@interface Humano : NSObject

@property (nonatomic, strong)NSString* nombre;
@property (nonatomic, strong)NSString* primerApellido;
@property (nonatomic, strong)NSString* dni;

-(id)initWithNombre:(NSString*)nombre apellido:(NSString*)apellido yDNI:(NSString*)dni;

-(NSString*)muestraNombre;
-(NSString*)muestraNombreyDNI;

@end

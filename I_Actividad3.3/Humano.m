//
//  Humano.m
//  I_Actividad3.3
//
//  Created by Javi on 29/10/14.
//  Copyright (c) 2014 javi. All rights reserved.
//

#import "Humano.h"


//Actividad 14
@interface Humano()

@property (readwrite, nonatomic, strong)NSNumber* altura;
@property (readwrite, nonatomic, strong)NSNumber* peso;
    
@end


@implementation Humano

-(id)initWithNombre:(NSString*)nombre apellido:(NSString*)apellido yDNI:(NSString*)dni{
    
    self = [super init];
    self.nombre = nombre;
    self.primerApellido = apellido;
    self.dni = dni;
    
    return self;   
}

-(NSString*)muestraNombre{
    return [[NSString alloc] initWithFormat:@"%@ %@", self.nombre, self.primerApellido];
}

-(NSString*)muestraNombreyDNI{
    return [[NSString alloc] initWithFormat:@"%@ %@, %@", self.nombre, self.primerApellido, self.dni];
}

//Actividad 14
-(void)calculaAltura:(NSNumber*)altura{
    self.altura = altura;
}

-(void)calculaPeso:(NSNumber *)peso{
    self.peso = peso;
}

@end

//
//  Persona.m
//  Proyecto3.1
//
//  Created by alumno on 22/10/14.
//  Copyright (c) 2014 javi. All rights reserved.
//

#import "Persona.h"

@implementation Persona

-(id)initWithParams:(NSString *)nombre primerApellido:(NSString *)primerApellido anyoNacimiento:(NSNumber *)anyoNacimiento{
    
    self = [super init];
    self.nombre = nombre;
    self.primerApellido = primerApellido;
    self.anyoNacimiento = anyoNacimiento;
    
    return self;
}

-(id)initWithNombre:(NSString*)nombre yApellido:(NSString*)apellido{
    
    self = [super init];
    self.nombre = nombre;
    self.primerApellido = apellido;
    
    return self;
}

-(NSString*)saluda{
    return @"Holaaaaaa!!!";
}

-(void)diAlgo{
    [self saluda];
    NSLog(@"%@ %@ %@",[self saluda] ,self.nombre, self.primerApellido);
}

-(NSString*)diAlgoAlerta{
    return [[NSString alloc] initWithFormat:@"%@ %@ %@",[self saluda] ,self.nombre, self.primerApellido];
}

@end

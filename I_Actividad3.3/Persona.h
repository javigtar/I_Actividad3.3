//
//  Persona.h
//  Proyecto3.1
//
//  Created by alumno on 22/10/14.
//  Copyright (c) 2014 javi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Persona : NSObject
@property (nonatomic, strong) NSString* nombre;
@property (nonatomic, strong) NSString* primerApellido;
@property (nonatomic, strong) NSNumber* anyoNacimiento;

-(id)initWithParams:(NSString*)nombre primerApellido:(NSString*)primerApellido anyoNacimiento:(NSNumber*)anyoNacimiento;
-(id)initWithNombre:(NSString*)nombre yApellido:(NSString*)apellido;

-(NSString*)saluda;
-(void)diAlgo;
-(NSString*)diAlgoAlerta;

@end

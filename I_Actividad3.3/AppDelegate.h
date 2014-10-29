//
//  AppDelegate.h
//  I_Actividad3.3
//
//  Created by alumno on 29/10/14.
//  Copyright (c) 2014 javi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

-(int)miMetodo:(id)parametro;
-(NSNumber*)suma:(int)numero con:(float)otroNumero;
-(void)cuentaNumeros:(int)num;
-(void)muestraCadena:(char)caracter conNumero:(int)numero conFloat:(float)otroNumero;
-(void)recorreArray;
-(int)sumaArray:(NSArray*)arraySuma;
-(NSMutableArray*)creaMutableArray;
-(void)eliminaElementos:(NSMutableArray*)mutableArray;
-(BOOL)existeElemNSSet:(NSSet*)set yNSString:(NSString*)string;

@end


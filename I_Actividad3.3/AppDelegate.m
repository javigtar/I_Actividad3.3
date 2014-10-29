//
//  AppDelegate.m
//  I_Actividad3.3
//
//  Created by alumno on 29/10/14.
//  Copyright (c) 2014 javi. All rights reserved.
//

#import "AppDelegate.h"
#import "Persona.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //Actividad 1
    //[self miMetodo]
    
    //Actividad 2
    //NSLog(@"El valor de int es: %d", [self miMetodo]);
    
    //Actividad 3
    [self miMetodo:[self suma:5 con:2.5]];
    [self miMetodo:self];
    
    //Actividad 4
    [self cuentaNumeros:1];
    
    //Actividad5
    [self muestraCadena:'a' conNumero:10 conFloat:2.5];
    
    //Actividad 6
    [self recorreArray];
    
    //Actividad 7
    NSArray *miArray = [[NSArray alloc] initWithObjects:@1, @10, @5, @20, @6, @7, @50, @24, @63, @8, nil];
    NSLog(@"Suma de la Array: %d", [self sumaArray:miArray]);
    
    //Actividad 9
    [self eliminaElementos:[self creaMutableArray]];
    
    //Actividad 10
    NSSet *set  = [[NSSet alloc] initWithObjects:@"cadena", @20, [self creaMutableArray], nil];
    
    //Actividad 11
    NSString *cadena1 = @"cadena";
    NSString *cadena2 = @"cadena2";
    
    if ([self existeElemNSSet:set yNSString:cadena1]) {
        NSLog(@"Existe la cadena: %@ en el set", cadena1);
    }else{
        NSLog(@"No existe la cadena: %@ en el set", cadena1);
    }
    if ([self existeElemNSSet:set yNSString:cadena2]) {
        NSLog(@"Existe la cadena: %@ en el set", cadena2);
    }else{
        NSLog(@"No existe la cadena: %@ en el set", cadena2);
    }
    
    //Actividad 12
    NSSet *setPersonas = [[NSSet alloc] initWithObjects:[[Persona alloc] initWithNombre:@"Pepe" yApellido:@"Garcia"] , [[Persona alloc] initWithNombre:@"Juan" yApellido:@"Rodriguez"], [[Persona alloc] initWithNombre:@"Pepe" yApellido:@"Tarin"], nil];
    NSPredicate *miPredicate = [NSPredicate predicateWithFormat:@"self.nombre LIKE 'Pepe'"];
    
    //Usando NSSet
    NSSet *personasFiltradas = [setPersonas filteredSetUsingPredicate:miPredicate];
    
    for ( Persona *persona in personasFiltradas){
        NSLog(@"NSSet: %@ %@", persona.nombre, persona.primerApellido);
    }
    
    //Usando NSMutableSet
    NSMutableSet *personasFiltradasMutableSet = [[NSMutableSet alloc] initWithSet:[setPersonas filteredSetUsingPredicate:miPredicate]];
    
    for ( Persona *persona in personasFiltradasMutableSet){
        NSLog(@"NSMutableSet: %@ %@", persona.nombre, persona.primerApellido);
    }
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (int)miMetodo:(id)parametro{
    //Actividad 1
    //NSLog(@"Ha pasado por aquí");
    
    //Actividad 3
    if( [parametro isKindOfClass:[NSNumber class]] ){
        NSLog(@"El valor de float es: %.2f", [parametro floatValue]);
    }else{
        NSLog(@"No es un valor numérico");
    }
    
    return 10;
}

- (NSNumber*)suma:(int)numero con:(float)otroNumero{
    //Actividad3
    otroNumero += numero;
    return [[NSNumber alloc] initWithFloat:otroNumero];
}

//Actividad 4
- (void)cuentaNumeros:(int)num{
    
    for (int i; i < num+20; i++) {
        NSLog(@"%d", i);
    }
}

//Actividad 5
- (void)muestraCadena:(char)caracter conNumero:(int)numero conFloat:(float)otroNumero{
    
    NSString *cadena = [[NSString alloc] initWithFormat:@"char: %c, int: %d, float: %f", caracter, numero, otroNumero];
    NSLog(@"%@",cadena);
}

//Actividad 6
-(void)recorreArray{
    
    NSArray *miArray = [NSArray arrayWithObjects:@"cadena1", @"cadena2", @"cadena3", nil];
    
    for (NSString *cadena in miArray ) {
        NSLog(@"%@", cadena);
    }
    
}

//Actividad 7
-(int)sumaArray:(NSArray*)arraySuma{
    
    int suma = 0;
    
    for (NSNumber *numero in arraySuma){
        suma += [numero intValue];
    }
    
    return suma;
}

//Actividad 8
-(NSMutableArray*)creaMutableArray{
    
    NSMutableArray *miMutableArray = [[NSMutableArray alloc] init];
    
    for ( int i=1 ; i<=10 ; i++) {
        [miMutableArray addObject:[[NSNumber alloc] initWithInt:i]];
    }
    return miMutableArray;
}

//Actividad 9
-(void)eliminaElementos:(NSMutableArray*)mutableArray{
    
    NSLog(@"Contenido del mutable array: ");
    
    //Colección para introducir en ella los índices que posteriormente eliminaré
    NSMutableIndexSet *indices = [[NSMutableIndexSet alloc] init];
    
    //Recorro todo el array y si el índice es par lo guardo en mi colección índices
    for (int i=0; i<[mutableArray count]; i++) {
        if ( i % 2 == 0) {
            [indices addIndex:i];
        }
    }
    
    //Elimino del array los objetos de los indices que tenia guardados
    [mutableArray removeObjectsAtIndexes:indices];
    
    for (NSNumber *numero in mutableArray) {
        NSLog(@"%d ", [numero intValue]);
    }
}

//Actividad 11
-(BOOL)existeElemNSSet:(NSSet*)set yNSString:(NSString*)string{
    
    return [set containsObject:string];
}



@end

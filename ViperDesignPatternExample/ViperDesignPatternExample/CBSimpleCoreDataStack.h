//
//  CBSimpleCoreDataStack.m
//
//  Created by César Brenes Solano on 02/02/15.

#import <Foundation/Foundation.h>
@import CoreData;


@interface CBSimpleCoreDataStack : NSObject

@property (strong, nonatomic, readonly) NSManagedObjectContext *context;

+ (NSString *)persistentStoreCoordinatorErrorNotificationName;

+ (instancetype)coreDataStackWithModelName:(NSString *)aModelName
                          databaseFilename:(NSString *)aDBName;


//crea un fichero de sql lite y lo va a guardar con el mismo nombre que tenga el modelo
+ (instancetype)coreDataStackWithModelName:(NSString *)aModelName;

+ (instancetype)coreDataStackWithModelName:(NSString *)aModelName
                               databaseURL:(NSURL *)aDBURL;


- (id)initWithModelName:(NSString *)aModelName databaseURL:(NSURL *)aDBURL;

//Elimina la base de datos
- (void)zapAllData;

-(void)saveWithErrorBlock:(void(^)(NSError *error))errorBlock;
-(NSArray *)executeRequest:(NSFetchRequest *)request
                 withError:(void(^)(NSError *error))errorBlock;
@end

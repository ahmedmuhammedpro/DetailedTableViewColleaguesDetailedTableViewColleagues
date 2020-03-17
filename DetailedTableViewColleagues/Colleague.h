#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Colleague : NSObject

@property NSString *name, *email, *address;
@property NSInteger phone, age;

- (id) initWithName: (NSString*) name andEmail: (NSString*) email andAddress: (NSString*) address andPhone: (NSInteger) phone andAge: (NSInteger) age;

@end

NS_ASSUME_NONNULL_END

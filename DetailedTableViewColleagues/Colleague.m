#import "Colleague.h"

@implementation Colleague

- (id)initWithName:(NSString *)name andEmail:(NSString *)email andAddress:(NSString *)address andPhone:(NSInteger)phone andAge:(NSInteger)age {
    
    self = [self init];
    
    self.name = name;
    self.email = email;
    self.address = address;
    self.phone = phone;
    self.age = age;
    
    return self;
}

@end

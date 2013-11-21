#import "NSSet+ZWPCollections.h"

@implementation NSSet (ZWPCollections)

- (NSSet *)filteredSetUsingBlock:(BOOL (^)(id obj, BOOL *stop))block {
    NSParameterAssert(block);
    NSMutableSet *s = [NSMutableSet setWithCapacity:self.count];
    [self enumerateObjectsUsingBlock:^(id obj, BOOL *stop) {
        if(block(obj, stop)) {
            [s addObject:obj];
        }
    }];
    return [s copy];
}
- (NSSet *)mappedSetUsingBlock:(id (^)(id obj, BOOL *stop))block {
    NSParameterAssert(block);
    NSMutableSet *s = [NSMutableSet setWithCapacity:self.count];
    [self enumerateObjectsUsingBlock:^(id obj, BOOL *stop) {
        id m = block(obj, stop);
        if(m) {
            [s addObject:m];
        }
    }];
    return [s copy];
}

@end

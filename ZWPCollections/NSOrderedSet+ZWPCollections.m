#import "NSOrderedSet+ZWPCollections.h"

@implementation NSOrderedSet (ZWPCollections)

- (NSOrderedSet *)filteredArrayUsingBlock:(BOOL (^)(id obj, NSInteger idx, BOOL *stop))block {
    NSParameterAssert(block);
    NSMutableOrderedSet *s = [NSMutableOrderedSet orderedSetWithCapacity:self.count];
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if(block(obj, idx, stop)) {
            [s addObject:obj];
        }
    }];
    return [s copy];
}
- (NSOrderedSet *)mappedArrayUsingBlock:(id (^)(id obj, NSInteger idx, BOOL *stop))block {
    NSParameterAssert(block);
    NSMutableOrderedSet *s = [NSMutableOrderedSet orderedSetWithCapacity:self.count];
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        id m = block(obj, idx, stop);
        if(m) {
            [s addObject:m];
        }
    }];
    return [s copy];
}

@end

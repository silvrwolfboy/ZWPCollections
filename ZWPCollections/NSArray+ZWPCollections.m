#import "NSArray+ZWPCollections.h"

@implementation NSArray (ZWPCollections)

- (NSArray *)filteredArrayUsingBlock:(BOOL (^)(id obj, NSInteger idx, BOOL *stop))block {
    NSParameterAssert(block);
    NSMutableArray *a = [NSMutableArray arrayWithCapacity:self.count];
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if(block(obj, idx, stop)) {
            [a addObject:obj];
        }
    }];
    return [a copy];
}
- (NSArray *)mappedArrayUsingBlock:(id (^)(id obj, NSInteger idx, BOOL *stop))block {
    NSParameterAssert(block);
    NSMutableArray *a = [NSMutableArray arrayWithCapacity:self.count];
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        id m = block(obj, idx, stop);
        if(m) {
            [a addObject:m];
        }
    }];
    return [a copy];
}

@end

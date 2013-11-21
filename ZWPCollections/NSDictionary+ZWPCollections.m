#import "NSDictionary+ZWPCollections.h"

@implementation NSDictionary (ZWPCollections)

- (NSDictionary *)filteredDictionaryUsingBlock:(BOOL (^)(id key, id obj, BOOL *stop))block {
    NSParameterAssert(block);
    NSMutableDictionary *d = [NSMutableDictionary dictionaryWithCapacity:self.count];
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        if(block(key, obj, stop)) {
            d[key] = obj;
        }
    }];
    return [d copy];
}
- (NSDictionary *)mappedDictionaryUsingBlock:(id (^)(id key, id obj, BOOL *stop))block {
    NSParameterAssert(block);
    NSMutableDictionary *d = [NSMutableDictionary dictionaryWithCapacity:self.count];
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        id m = block(key, obj, stop);
        if(m) {
            d[key] = m;
        }
    }];
    return [d copy];
}

@end

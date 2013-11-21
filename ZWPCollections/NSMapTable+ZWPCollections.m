#import "NSMapTable+ZWPCollections.h"

@implementation NSMapTable (ZWPCollections)

- (id)objectForKeyedSubscript:(id)key {
    return [self objectForKey:key];
}
- (void)setObject:(id)object forKeyedSubscript:(id)key {
    [self setObject:object forKey:key];
}

@end

#import <Foundation/Foundation.h>

@interface NSOrderedSet (ZWPCollections)

- (NSOrderedSet *)filteredOrderedSetUsingBlock:(BOOL (^)(id obj, NSUInteger idx, BOOL *stop))block;
- (NSOrderedSet *)mappedOrderedSetUsingBlock:(id (^)(id obj, NSUInteger idx, BOOL *stop))block;

@end

#import <Foundation/Foundation.h>

@interface NSOrderedSet (ZWPCollections)

- (NSOrderedSet *)filteredOrderedSetUsingBlock:(BOOL (^)(id obj, NSInteger idx, BOOL *stop))block;
- (NSOrderedSet *)mappedOrderedSetUsingBlock:(id (^)(id obj, NSInteger idx, BOOL *stop))block;

@end

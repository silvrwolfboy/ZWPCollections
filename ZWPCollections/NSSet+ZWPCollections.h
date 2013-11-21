#import <Foundation/Foundation.h>

@interface NSSet (ZWPCollections)

- (NSSet *)filteredSetUsingBlock:(BOOL (^)(id obj, BOOL *stop))block;
- (NSSet *)mappedSetUsingBlock:(id (^)(id obj, BOOL *stop))block;

@end

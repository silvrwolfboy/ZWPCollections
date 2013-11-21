#import <Foundation/Foundation.h>

@interface NSArray (ZWPCollections)

- (NSArray *)filteredArrayUsingBlock:(BOOL (^)(id obj, NSUInteger idx, BOOL *stop))block;
- (NSArray *)mappedArrayUsingBlock:(id (^)(id obj, NSUInteger idx, BOOL *stop))block;

@end

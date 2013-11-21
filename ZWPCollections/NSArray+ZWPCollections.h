#import <Foundation/Foundation.h>

@interface NSArray (ZWPCollections)

- (NSArray *)filteredArrayUsingBlock:(BOOL (^)(id obj, NSInteger idx, BOOL *stop))block;
- (NSArray *)mappedArrayUsingBlock:(id (^)(id obj, NSInteger idx, BOOL *stop))block;

@end

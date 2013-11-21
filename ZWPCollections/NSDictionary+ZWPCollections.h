#import <Foundation/Foundation.h>

@interface NSDictionary (ZWPCollections)

- (NSDictionary *)filteredDictionaryUsingBlock:(BOOL (^)(id key, id obj, BOOL *stop))block;
- (NSDictionary *)mappedDictionaryUsingBlock:(id (^)(id key, id obj, BOOL *stop))block;

@end

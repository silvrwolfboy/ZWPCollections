#import <Foundation/Foundation.h>

@interface NSMapTable (ZWPCollections)

- (id)objectForKeyedSubscript:(id)key;
- (void)setObject:(id)object forKeyedSubscript:(id)key;

@end

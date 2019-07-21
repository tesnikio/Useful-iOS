#import <Foundation/Foundation.h>

@interface NSWeakReference : NSObject

@property (nonatomic, weak) instancetype value;

- (instancetype)initWithValue:(instancetype)value;

@end

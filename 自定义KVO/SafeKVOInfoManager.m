//
//  SafeKVOInfoManager.m
//  自定义KVO
//
//  Created by shifx on 2020/11/4.
//

#import "SafeKVOInfoManager.h"

@implementation SafeKVOInfoManager

-(instancetype)initWithObserver:(NSObject *)observer
                        keyPath:(NSString *)keyPath
                        options:(SafeKeyValueObservingOptions)options
                    handleBlock:(SafeKVOBlock)handleBlock{
    self = [super init];
    if (self) {
        self.observer = observer;
        self.keyPath = keyPath;
        self.options = options;
        self.handleBlock = handleBlock;
    }
    return self;
}
@end

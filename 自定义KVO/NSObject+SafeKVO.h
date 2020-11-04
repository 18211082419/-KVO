//
//  NSObject+SafeKVO.h
//  自定义KVO
//
//  Created by shifx on 2020/11/4.
//

#import <Foundation/Foundation.h>
#import "SafeKVOInfoManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (SafeKVO)

-(void)safeAddObserver:(NSObject *)observer
               keyPath:(NSString *)keyPath
               options:(SafeKeyValueObservingOptions)options
               context:(nullable void *)context
           handleBlock:(SafeKVOBlock)handleBlock;
-(void)safeRemoveObserver:(NSObject *)observer
                  keyPath:(NSString *)keyPath;
@end

NS_ASSUME_NONNULL_END

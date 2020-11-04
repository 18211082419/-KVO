//
//  SafeKVOInfoManager.h
//  自定义KVO
//
//  Created by shifx on 2020/11/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//定义KeyValueObservingOptions枚举
typedef NS_OPTIONS(NSUInteger, SafeKeyValueObservingOptions) {
    SafeKeyValueObservingOptionNew = 0x01,
    SafeKeyValueObservingOptionOld = 0x02,
};

typedef void(^SafeKVOBlock)(id observer,NSString *keyPath,id oldValue,id newValue);

@interface SafeKVOInfoManager : NSObject
/// 保存监听的observer
@property (nonatomic, weak) NSObject *observer;
/// 保存keyPath
@property (nonatomic, copy) NSString *keyPath;
/// 保存SafeKeyValueObservingOptions
@property (nonatomic, assign) SafeKeyValueObservingOptions options;
/// kvo监听属性变化后的回调block
@property (nonatomic, copy) SafeKVOBlock handleBlock;

/// 初始化KVO数据
/// @param observer observer
/// @param keyPath keyPath
/// @param options options
-(instancetype)initWithObserver:(NSObject *)observer
                        keyPath:(NSString *)keyPath
                        options:(SafeKeyValueObservingOptions)options
                    handleBlock:(SafeKVOBlock)handleBlock;

@end

NS_ASSUME_NONNULL_END

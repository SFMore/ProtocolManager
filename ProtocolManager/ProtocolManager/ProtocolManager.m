//
//  ProtocolManager.m
//  ProtocolManager
//
//  Created by zsf on 2018/5/31.
//  Copyright © 2018年 zsf. All rights reserved.
//

#import "ProtocolManager.h"

@interface ProtocolManager()

@property(nonatomic,strong)NSMutableDictionary *serviceProvideSource;

@end

@implementation ProtocolManager
+ (ProtocolManager *)sharedInstance
{
    static ProtocolManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    
    return instance;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        _serviceProvideSource = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol *)protocol
{
    if (provide == nil || protocol == nil) return;
    [[self sharedInstance].serviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
}


+ (id)serviceProvideForProtocol:(Protocol *)protocol
{
    return [[self sharedInstance].serviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
}
@end

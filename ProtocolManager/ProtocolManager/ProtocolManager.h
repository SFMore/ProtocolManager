//
//  ProtocolManager.h
//  ProtocolManager
//
//  Created by zsf on 2018/5/31.
//  Copyright © 2018年 zsf. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProtocolManager : NSObject
+ (void)registServiceProvide:(id)provide forProtocol:(Protocol *)protocol;
+ (id)serviceProvideForProtocol:(Protocol *)protocol;

@end

//
//  TIOHTTPSessionManager.h
//  Aula6_AFNetworking
//
//  Created by Rafael Lutz on 10/06/15.
//  Copyright (c) 2015 Rafael Lutz. All rights reserved.
//

#import "AFHTTPSessionManager.h"

@interface TIOHTTPSessionManager : AFHTTPSessionManager

+(instancetype)sharedInstance;

@end

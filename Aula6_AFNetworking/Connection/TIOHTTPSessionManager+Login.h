//
//  TIOHTTPSessionManager+Login.h
//  Aula6_AFNetworking
//
//  Created by Rafael Lutz on 10/06/15.
//  Copyright (c) 2015 Rafael Lutz. All rights reserved.
//

#import "TIOHTTPSessionManager.h"

// Declaração do block
typedef void(^TIOHTTPSessionLoginBlock)(NSError *error);

@interface TIOHTTPSessionManager (Login)

+(void) loginWithCompletionBlock:(TIOHTTPSessionLoginBlock)completion andUsername:(NSString *)username andPassword:(NSString *)password;

@end

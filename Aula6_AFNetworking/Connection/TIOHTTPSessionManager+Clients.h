//
//  TIOHTTPSessionManager+Clients.h
//  Aula6_AFNetworking
//
//  Created by Rafael Lutz on 10/06/15.
//  Copyright (c) 2015 Rafael Lutz. All rights reserved.
//

#import "TIOHTTPSessionManager.h"

// Declaração do block
typedef void(^TIOHTTPSessionClientBlock)(NSArray *clients, NSError *error);

@interface TIOHTTPSessionManager (Clients)

+(void) getAllClientsWithCompletionBlock:(TIOHTTPSessionClientBlock) completion;

@end

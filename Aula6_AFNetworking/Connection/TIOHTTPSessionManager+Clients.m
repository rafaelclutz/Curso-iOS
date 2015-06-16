//
//  TIOHTTPSessionManager+Clients.m
//  Aula6_AFNetworking
//
//  Created by Rafael Lutz on 10/06/15.
//  Copyright (c) 2015 Rafael Lutz. All rights reserved.
//

#import "TIOHTTPSessionManager+Clients.h"
#import "TIOClient.h"

@implementation TIOHTTPSessionManager (Clients)

+(void)getAllClientsWithCompletionBlock:(TIOHTTPSessionClientBlock)completion {
    [[self sharedInstance] GET:@"clients" parameters:nil
    success:^(NSURLSessionDataTask *task, id responseObject) {
        NSMutableArray *clients = [NSMutableArray array];
        
        for (NSDictionary *clientJSONObject in responseObject) {
            TIOClient *client = [TIOClient clientFromJSON:clientJSONObject];
            [clients addObject:client];
        }
        
        completion(clients, nil);
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
        completion (nil, error);
        
    }];
}

@end

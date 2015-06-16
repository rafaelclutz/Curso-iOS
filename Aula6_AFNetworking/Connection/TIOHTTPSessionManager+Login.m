//
//  TIOHTTPSessionManager+Login.m
//  Aula6_AFNetworking
//
//  Created by Rafael Lutz on 10/06/15.
//  Copyright (c) 2015 Rafael Lutz. All rights reserved.
//

#import "TIOHTTPSessionManager+Login.h"

@implementation TIOHTTPSessionManager (Login)

+(void)loginWithCompletionBlock:(TIOHTTPSessionLoginBlock)completion
                    andUsername:(NSString *)username
                    andPassword:(NSString *)password {
    
    NSDictionary *params = @{@"username": username,
                             @"password": password};
    [[self sharedInstance] POST:@"login" parameters:params success:^(NSURLSessionDataTask *task, id responseObject) {
        completion(nil);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        completion(error);
    }];
    
}

@end

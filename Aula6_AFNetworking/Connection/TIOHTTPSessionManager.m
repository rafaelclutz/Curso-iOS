//
//  TIOHTTPSessionManager.m
//  Aula6_AFNetworking
//
//  Created by Rafael Lutz on 10/06/15.
//  Copyright (c) 2015 Rafael Lutz. All rights reserved.
//

#import "TIOHTTPSessionManager.h"

static NSString *const kBaseURL = @"http://private-9f905-citbase.apiary-mock.com";

@implementation TIOHTTPSessionManager

+ (instancetype)sharedInstance {
    static TIOHTTPSessionManager *_sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[TIOHTTPSessionManager alloc] init];
    });
    
    return _sharedInstance;
}

-(instancetype)init {
    NSURL *url = [NSURL URLWithString:kBaseURL];
    TIOHTTPSessionManager *sessionManager = [[TIOHTTPSessionManager alloc] initWithBaseURL:url];
    
    if (sessionManager) {
        sessionManager.requestSerializer = [AFJSONRequestSerializer new];
        sessionManager.responseSerializer = [AFJSONResponseSerializer new];
        
        [sessionManager.requestSerializer setValue:@"1927165524351" forHTTPHeaderField:@"AppToken"];
    }
    
    return sessionManager;
}

@end

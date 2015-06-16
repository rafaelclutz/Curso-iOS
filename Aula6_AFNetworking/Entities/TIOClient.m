//
//  TIOClient.m
//  Aula6_AFNetworking
//
//  Created by Rafael Lutz on 10/06/15.
//  Copyright (c) 2015 Rafael Lutz. All rights reserved.
//

#import "TIOClient.h"

@implementation TIOClient

+(instancetype)clientFromJSON:(NSDictionary *)clientJSONObject {
    TIOClient *client = [[TIOClient alloc] init];
    
    client.identifier = [clientJSONObject objectForKey:@"id"];
    client.firstName = [clientJSONObject objectForKey:@"firstName"];
    client.lastName = [clientJSONObject objectForKey:@"lastName"];
    client.email = [clientJSONObject objectForKey:@"email"];
    client.phoneNumber = [clientJSONObject objectForKey:@"phoneNumber"];
    client.gender = [clientJSONObject objectForKey:@"gender"];
    
    return client;
}

@end

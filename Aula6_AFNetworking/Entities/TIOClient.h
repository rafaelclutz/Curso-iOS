//
//  TIOClient.h
//  Aula6_AFNetworking
//
//  Created by Rafael Lutz on 10/06/15.
//  Copyright (c) 2015 Rafael Lutz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TIOClient : NSObject

@property (copy, nonatomic) NSNumber *identifier;
@property (copy, nonatomic) NSString *firstName;
@property (copy, nonatomic) NSString *lastName;
@property (copy, nonatomic) NSString *email;
@property (copy, nonatomic) NSString *phoneNumber;
@property (copy, nonatomic) NSString *gender;

+(instancetype)clientFromJSON:(NSDictionary *)clientJSONObject;

@end

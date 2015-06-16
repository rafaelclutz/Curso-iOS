//
//  TIOClientTableViewCell.m
//  Aula6_AFNetworking
//
//  Created by Rafael Lutz on 10/06/15.
//  Copyright (c) 2015 Rafael Lutz. All rights reserved.
//

#import "TIOClientTableViewCell.h"

@interface TIOClientTableViewCell()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *genderLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;

@end

@implementation TIOClientTableViewCell

- (void)populateCellWithEntity:(TIOClient *)client {
    self.nameLabel.text = [NSString stringWithFormat:@"%@ %@", client.firstName, client.lastName];
    self.genderLabel.text = client.gender;
    self.phoneNumberLabel.text = client.phoneNumber;
    self.emailLabel.text = client.email;
}

@end

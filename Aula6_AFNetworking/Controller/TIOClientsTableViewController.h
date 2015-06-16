//
//  TIOClientsTableViewController.h
//  Aula6_AFNetworking
//
//  Created by Rafael Lutz on 10/06/15.
//  Copyright (c) 2015 Rafael Lutz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TIOClientsTableViewController : UITableViewController

@property (copy, nonatomic) void (^didFinishClientServiceBlock)(BOOL success);

@end

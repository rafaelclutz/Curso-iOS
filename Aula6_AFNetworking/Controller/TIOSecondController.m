//
//  TIOSecondController.m
//  Aula6_AFNetworking
//
//  Created by Rafael Lutz on 09/06/15.
//  Copyright (c) 2015 Rafael Lutz. All rights reserved.
//

#import "TIOSecondController.h"
#import "TIOSecondView.h"
#import "TIOClientsTableViewController.h"

@interface TIOSecondController ()

@end

@implementation TIOSecondController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    TIOClientsTableViewController *clientsTableViewController = (TIOClientsTableViewController *) segue.destinationViewController;
    [clientsTableViewController setDidFinishClientServiceBlock:^(BOOL success) {
        [self.mainView dismissLoadingView];
        
        if (!success) {
            NSLog(@"Error");
        }
    }];
    
}

-(TIOSecondView *) mainView {
    TIOSecondView *__weak view = (TIOSecondView *) self.view;
    return view;
}

@end

//
//  TIOClientsTableViewController.m
//  Aula6_AFNetworking
//
//  Created by Rafael Lutz on 10/06/15.
//  Copyright (c) 2015 Rafael Lutz. All rights reserved.
//

#import "TIOClientsTableViewController.h"
#import "TIOClientTableViewCell.h"
#import "TIOHTTPSessionManager+Clients.h"

@interface TIOClientsTableViewController ()

@property (strong, nonatomic) NSArray *dataSource;

@end

@implementation TIOClientsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // faz esse esquema por conta do dataSource já ser strong
    // se não fosse dessa maneira, o contador iria incrementar e talvez pudesse até dar leak de memória
    typeof (self) __block weakSelf = self;
    [TIOHTTPSessionManager getAllClientsWithCompletionBlock:^(NSArray *clients, NSError *error) {
        weakSelf.dataSource = clients;
        [weakSelf.tableView reloadData];
        
        // Chamada do block
        self.didFinishClientServiceBlock(clients.count);
    }];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TIOClientTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ClientCustomCell"];
    if (cell) {
        TIOClient *client = [self.dataSource objectAtIndex:indexPath.row];
        
        // Sempre atualiza os dados da célula
        [cell populateCellWithEntity:client];
    }
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

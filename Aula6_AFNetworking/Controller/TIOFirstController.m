//
//  TIOFirstController.m
//  Aula6_AFNetworking
//
//  Created by Rafael Lutz on 09/06/15.
//  Copyright (c) 2015 Rafael Lutz. All rights reserved.
//

#import "TIOFirstController.h"
#import "TIOFirstView.h"
#import "TIOHTTPSessionManager+Login.h"

@interface TIOFirstController ()

@end

@implementation TIOFirstController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doLogin:(id)sender {
    [TIOHTTPSessionManager loginWithCompletionBlock:^(NSError *error) {
        if (error) {
            [self showLoginServiceErrorMessage];
        } else {
            [self showLoginServiceSuccessMessage:self.mainView.usernameTextField.text];
        }
        
    } andUsername:self.mainView.usernameTextField.text andPassword:self.mainView.passwordTextField.text];
}

-(void) showLoginServiceErrorMessage {
    [[[UIAlertView alloc] initWithTitle:@"Erro" message:@"Ocorreu um erro durante o login" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
}

-(void) showLoginServiceSuccessMessage:(NSString *)username {
    [[[UIAlertView alloc] initWithTitle:@"Informação" message:[NSString stringWithFormat:@"Usuário %@ logado com sucesso", username] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
}

#pragma mark - Main view

-(TIOFirstView *)mainView {
    TIOFirstView *__weak view = (TIOFirstView *) self.view;
    return view;
}

@end

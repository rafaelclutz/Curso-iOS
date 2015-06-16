//
//  TIOSecondView.m
//  Aula6_AFNetworking
//
//  Created by Rafael Lutz on 09/06/15.
//  Copyright (c) 2015 Rafael Lutz. All rights reserved.
//

#import "TIOSecondView.h"

@interface TIOSecondView()

@property (weak, nonatomic) IBOutlet UIView *loadingView;

@end

@implementation TIOSecondView

- (void)dismissLoadingView {
    self.loadingView.hidden = YES;
}

@end

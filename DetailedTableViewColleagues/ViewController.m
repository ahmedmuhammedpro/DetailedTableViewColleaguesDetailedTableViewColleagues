//
//  ViewController.m
//  DetailedTableViewColleagues
//
//  Created by ahmedpro on 3/17/20.
//  Copyright © 2020 ahmedpro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameLabel.text = [@"Name: " stringByAppendingString: self.colleage.name];
    self.addressLabel.text = [@"Address: " stringByAppendingString: self.colleage.address];
    self.emailLabel.text = [@"Email: " stringByAppendingString: self.colleage.email];
    self.phoneLabel.text = [@"Phone: " stringByAppendingFormat: @"%ld", (long)self.colleage.phone];
    self.ageLabel.text = [@"Age: " stringByAppendingFormat: @"%ld", (long)self.colleage.age];
}


@end

//
//  TeamDetailViewController.m
//  NavigationControllers
//
//  Created by Gan Chau on 6/15/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "TeamDetailViewController.h"

@interface TeamDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneLabel;
@property (weak, nonatomic) IBOutlet UILabel *birthPlaceLabel;
@property (weak, nonatomic) IBOutlet UILabel *favoriteBandLabel;

@end

@implementation TeamDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = self.teamMember.name;
    self.imageView.image = self.teamMember.image;
    self.nameLabel.text = self.teamMember.name;
    self.phoneLabel.text = self.teamMember.phoneNumber;
    self.birthPlaceLabel.text =[NSString stringWithFormat:@"%@, %@", self.teamMember.birthCity, self.teamMember.birthState];
    self.favoriteBandLabel.text = self.teamMember.favoriteBand;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

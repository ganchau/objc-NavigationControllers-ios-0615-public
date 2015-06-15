//
//  TeamViewController.m
//  NavigationControllers
//
//  Created by Gan Chau on 6/15/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "TeamViewController.h"
#import "TeamDetailViewController.h"
#import "TeamMember.h"

@interface TeamViewController ()

@end

@implementation TeamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (TeamMember *)teamMemberForSegueIdentifier:(NSString *)identifier
{
    TeamMember *al = [[TeamMember alloc] initWithName:@"Al" phoneNumber:@"5551212" birthCity:@"Detroit" birthState:@"Michigan" favoriteBand:@"The Beatles" image:[UIImage imageNamed:@"al.jpg"]];
    TeamMember *joe = [[TeamMember alloc] initWithName:@"Joe" phoneNumber:@"555-998-6600" birthCity:@"Omaha" birthState:@"Nebraska" favoriteBand:@"Nysnc" image:[UIImage imageNamed:@"joe.jpg"]];
    TeamMember *chris = [[TeamMember alloc] initWithName:@"Chris" phoneNumber:@"555-777-9999" birthCity:@"Miami" birthState:@"Florida" favoriteBand:@"Nine Inch Nails" image:[UIImage imageNamed:@"chris.jpg"]];
    TeamMember *avi = [[TeamMember alloc] initWithName:@"Avi" phoneNumber:@"555-000-9876" birthCity:@"Compton" birthState:@"California" favoriteBand:@"NWA" image:[UIImage imageNamed:@"avi.jpg"]];
    
    NSDictionary *teamMembers = @{@"al" : al,
                                  @"joe": joe,
                                  @"chris" : chris,
                                  @"avi" : avi};
    
    return teamMembers[identifier];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    TeamDetailViewController *TDVC = segue.destinationViewController;
    TeamMember *tappedTeamMember = [self teamMemberForSegueIdentifier:segue.identifier];
    TDVC.teamMember = tappedTeamMember;
}


@end

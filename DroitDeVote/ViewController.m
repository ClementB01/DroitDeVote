//
//  ViewController.m
//  DroitDeVote
//
//  Created by lpiem on 17/10/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lblAge;
@property (weak, nonatomic) IBOutlet UILabel *lblVote;
@property (strong, nonatomic) Person *person;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.person = [[Person alloc]initWithName:@"John Doe" age:20];
}

- (IBAction)sliderChange:(UISlider *)slider {
    self.person.age = round(slider.value /5) * 5;
    slider.value = self.person.age;
    self.lblAge.text = [NSString stringWithFormat:@"%hhu", self.person.age];
    self.lblVote.text = [self.person canLegallyVote] ? @"Droit de vote : oui" : @"Droit de vote : non";
}


@end

//
//  ViewController.m
//  TipCalculator
//
//  Created by Justine Herman on 11/11/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;
@property (weak, nonatomic) IBOutlet UILabel *totalAmountLabel;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;

@property (nonatomic, assign) double billTotal;
@property (nonatomic, assign) double tipPercentage;
@property (nonatomic, assign) double tipAmount;
@property (nonatomic, assign) double totalAmount;


@end


@implementation ViewController

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    [self updateLabels];

}


- (void)didReceiveMemoryWarning
{
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)updateLabels
{
    double billTotal = self.billAmountTextField.text.doubleValue;
    
    float tipPercentage = self.tipPercentageTextField.text.intValue;
    
    double tipAmount = (billTotal * tipPercentage)/100;
    
    self.totalAmount = billTotal + tipAmount;

    self.tipAmountLabel.text = [NSString stringWithFormat:@"$%.2f", self.tipAmount];
    self.totalAmountLabel.text = [NSString stringWithFormat:@"$%.2f", self.totalAmount];
}

- (IBAction)calculateTip:(UIButton *)sender
{
    [self updateLabels];

}



@end

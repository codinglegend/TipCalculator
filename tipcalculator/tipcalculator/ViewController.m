//
//  ViewController.m
//  tipcalculator
//
//  Created by Alain  on 2015-05-15.
//  Copyright (c) 2015 Alain . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateTip:(id)sender {
    
    NSString *textInput = [_billAmountTextField text];
    float textInputToNumber = [textInput floatValue]; //here you get the float value of the textInput. there is also intValue etc to convert input to another format
    float tipCalculation = textInputToNumber*.15;
    
    NSString *customTextInput = [_tipPercentageTextField text];
    float customPercentage = [customTextInput floatValue];
    float customCalculation = customPercentage/100*textInputToNumber;
    
    if ([self.tipPercentageTextField.text isEqualToString:@""]){
        self.tipAmountLabel.text = [NSString stringWithFormat:@"The tip is: %f", tipCalculation];
    }else{
        self.tipAmountLabel.text = [NSString stringWithFormat:@"Custom tip is: %f", customCalculation];
    }
        
    
}




@end

//
//  TempConvertorViewController.m
//  TempConverter
//
//  Created by Angus Huang on 1/17/14.
//  Copyright (c) 2014 Angus Huang. All rights reserved.
//

#import "TempConverterViewController.h"
#import "TempConverter.h"

@interface TempConverterViewController ()

@property (weak, nonatomic) IBOutlet UITextField *fahrenheitTextField;
@property (weak, nonatomic) IBOutlet UITextField *celsiusTextField;

- (IBAction)onFahrenheitTextFieldChanged:(UITextField *)sender;
- (IBAction)onCelsiusTextFieldChanged:(UITextField *)sender;

- (IBAction)onConvertClicked:(UIButton *)sender;

@end

@implementation TempConverterViewController

//==============================================================================
#pragma mark - Initializers
//==============================================================================

- (id)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        self.title = @"Temperature Converter";
    }
    
    return self;
}

//==============================================================================
#pragma mark - IBAction Methods
//==============================================================================

- (IBAction)onFahrenheitTextFieldChanged:(UITextField *)sender {
    
    // If the user changes the "Fahrenheit" TextField, then automatically clear
    // the "Celsius" TextField.
    if (self.fahrenheitTextField.text) {
        self.celsiusTextField.text = nil;
    }
}

- (IBAction)onCelsiusTextFieldChanged:(UITextField *)sender {
    
    // If the user changes the "Celsius" TextField, then automatically clear
    // the "Fahrenheit" TextField.
    if (self.celsiusTextField.text) {
        self.fahrenheitTextField.text = nil;
    }
}

- (IBAction)onConvertClicked:(UIButton *)sender {
    
    // Assert: At most one of the TextFields will be populated at this point.
    // Assert: If populated, the TextField contains a valid integer.
    // Convert from the field that is populated.
    // If neither field is populated, do nothing.
    if (![self.fahrenheitTextField.text isEqualToString:@""]) {
        
        int fahrenheit = self.fahrenheitTextField.text.integerValue;
        int celsius = [TempConverter convertFtoC:fahrenheit];
        NSString *celsiusString = [NSString stringWithFormat:@"%d", (int)celsius];
        
        [self.celsiusTextField setText:celsiusString];
        
    } else if (![self.celsiusTextField.text isEqualToString:@""]) {
        
        int celsius = self.celsiusTextField.text.integerValue;
        int fahrenheit = [TempConverter convertCtoF:celsius];
        NSString *fahrenheitString = [NSString stringWithFormat:@"%d", (int)fahrenheit];
        
        [self.fahrenheitTextField setText:fahrenheitString];
    }
}


@end

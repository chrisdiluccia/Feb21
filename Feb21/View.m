//
//  View.m
//  Feb21
//
//  Created by Christopher J Di Luccia on 2/19/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
// This file is going to hold the content / logic for my output display that will reside in my view

#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame:frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor greenColor];
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
	// Drawing code
    
    //define some fonts
	UIFont *boldFont = [UIFont boldSystemFontOfSize: 16.0];
    UIFont *stdFont = [UIFont systemFontOfSize: 14.0];
  
//    //get the data from yahoo finance for AAPL
//    NSURL *aaplUrl = [[NSURL alloc] initWithString:
//                      @"http://finance.yahoo.com/d/quotes.csv?s=AAPL&f=sl1t1"];
    
/*    //get the data from yahoo finance for OCZ
    NSURL *oczUrl = [[NSURL alloc] initWithString:
                 @"http://finance.yahoo.com/d/quotes.csv?s=OCZ&f=sl1t1"];
 */
  
//	NSError *error;

/*    //put AAPL data into a string
    NSString *aaplString = [[NSString alloc]
                        initWithContentsOfURL: aaplUrl
                        encoding: NSUTF8StringEncoding
                        error: &error
                        ];
    
	if (aaplString == nil) {
		aaplString = [error localizedDescription];
	}
*/   
/*    //put OCZ data into a string
    NSString *oczString = [[NSString alloc]
                            initWithContentsOfURL: oczUrl
                            encoding: NSUTF8StringEncoding
                            error: &error
                            ];
    
	if (oczString == nil) {
		oczString = [error localizedDescription];
	}
    */
    UIDevice *device = [UIDevice currentDevice];	//store address of the only UIDevice
    
    NSString *descString = @"DEVICE INFO:";
    NSString *osTypeString = device.systemName;		//name of operating system, e.g. "iPhone OS"
	NSString *modelString = device.model;		//Is it an iPhone, iPod, or iPad?
	NSString *osVersionString = device.systemVersion;	//version number of operating system, e.g., "6.1"
    NSString *stockInfoString = @"STOCK INFO:";
    
    CGPoint descPoint = CGPointMake(0.0, 0.0);//start printing device info
	[descString drawAtPoint: descPoint withFont: boldFont];
    CGPoint osTypePoint = CGPointMake(0.0, 18);
	[osTypeString drawAtPoint: osTypePoint withFont: stdFont];
    CGPoint modelPoint = CGPointMake(0.0, 36.0);
	[modelString drawAtPoint: modelPoint withFont: stdFont];
    CGPoint osVersionPoint = CGPointMake(0.0, 54.0);
	[osVersionString drawAtPoint: osVersionPoint withFont: stdFont];//finish printing device info
    
    CGPoint stockInfoPoint = CGPointMake(0.0, 72.0);//start printing stock info
	[stockInfoString drawAtPoint: stockInfoPoint withFont: boldFont];
//    CGPoint aaplPoint = CGPointMake(0.0, 90.0);
//	[aaplString drawAtPoint: aaplPoint withFont: stdFont];
 //   CGPoint oczPoint = CGPointMake(0.0, 108.0);
//	[oczString drawAtPoint: oczPoint withFont: stdFont];
    
    
}

@end

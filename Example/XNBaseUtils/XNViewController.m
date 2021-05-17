//
//  XNViewController.m
//  XNBaseUtils
//
//  Created by yexiannan on 12/05/2019.
//  Copyright (c) 2019 yexiannan. All rights reserved.
//

#import "XNViewController.h"
#import "XNBaseUtils.h"

@interface XNViewController ()
@property (nonatomic, strong) UILabel *label;
@end

@implementation XNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.label = [UILabel new];
    self.label.backgroundColor = [UIColor orangeColor];
    self.label.textColor = [UIColor whiteColor];
    self.label.text = @"asdghajsdfs";
    self.label.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:18];
//    self.label.numberOfLines = 0;
    CGSize size = [self getSizeWithString:self.label.text withFont:self.label.font LimitWidth:150];
    self.label.frame = CGRectMake(100, 100, size.width, size.height);
    
    
    [self.view addSubview:self.label];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"---adsa");

}

- (CGSize)getSizeWithString:(NSString *)aStr withFont:(UIFont *)font LimitWidth:(CGFloat)aLimitWidth{
    NSMutableParagraphStyle* paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
    paragraphStyle.alignment = NSTextAlignmentLeft;
    NSDictionary *attributes = @{NSFontAttributeName:font, NSParagraphStyleAttributeName:paragraphStyle};
    CGSize stringSize = [aStr boundingRectWithSize:CGSizeMake(aLimitWidth, MAXFLOAT) options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil].size;
    return stringSize;
}
@end

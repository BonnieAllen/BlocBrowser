//
//  ViewController.m
//  BlocBrowser
//
//  Created by King Kittenhead on 3/3/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController () <WKNavigationDelegate>
@end
@interface ViewController () <WKNavigationDelegate, UITextFieldDelegate>

@property (nonatomic, strong) WKWebView *webView;
@property (nonatomic, strong) UITextField *textField;


@end

@implementation ViewController

- (void)loadView {
    UIView *mainView = [UIView new];
    
    self.webView = [[WKWebView alloc] init];
    self.webView.navigationDelegate = self;
    
    self.textField = [[UITextField alloc] init];
    self.textField.keyboardType = UIKeyboardTypeURL;
    self.textField.returnKeyType = UIReturnKeyDone;
    self.textField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    self.textField.autocorrectionType = UITextAutocorrectionTypeNo;
    self.textField.placeholder = NSLocalizedString(@"Website URL", @"Placeholder text for web browser URL field");
    self.textField.backgroundColor = [UIColor colorWithWhite:220/255.0f alpha:1];
    self.textField.delegate = self;
    
    NSString *urlString = @"https://wikipedia.org";
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
    
    
    
    [mainView addSubview:self.webView];
    [mainView addSubview:self.textField];
    self.view = mainView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    //make the webview fill the main view
    self.webView.frame = self.view.frame;
}


@end

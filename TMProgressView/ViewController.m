//
//  ViewController.m
//  TMProgressView
//
//  Created by Luther on 2019/8/26.
//  Copyright © 2019 mrstock. All rights reserved.
//

#import "ViewController.h"
#import "ProgressView/TMProgressView.h"

@interface ViewController ()
@property (nonatomic, strong) TMProgressView *progressView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:self.progressView];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.progressView.progress = 0.8;
    });
    
}

#pragma mark - getter
- (TMProgressView *)progressView {
    if (!_progressView) {
        _progressView = [[TMProgressView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _progressView.center = self.view.center;
        _progressView.progressType = TMProgressViewTypePie;
    }
    return _progressView;
}

@end

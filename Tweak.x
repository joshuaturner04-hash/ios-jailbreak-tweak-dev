#import <UIKit/UIKit.h>

%hook SpringBoard

- (void)applicationDidFinishLaunching:(id)application {
    %orig;

    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Hello Josh"
                                                                     message:@"Your first tweak is working!"
                                                              preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Nice"
                                                   style:UIAlertActionStyleDefault
                                                 handler:nil];
    [alert addAction:ok];

    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [window.rootViewController presentViewController:alert animated:YES completion:nil];
}

%end

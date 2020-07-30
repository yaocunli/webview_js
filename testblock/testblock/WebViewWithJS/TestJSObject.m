//
//  TestJSObject.m
//  testblock
//


#import "TestJSObject.h"
#import <UIKit/UIKit.h>
@implementation TestJSObject

-(void)ZTHShowPicker{
    if (self.delegate && [self.delegate respondsToSelector:@selector(ZTHShowPicker)]){
        [self.delegate ZTHShowPicker];
    }
}

-(void)testWithParamaer:(NSString *)parame
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(testWithParamaer:)]){
        [self.delegate testWithParamaer:parame];
    }
    
}

@end

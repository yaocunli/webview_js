//
//  TestJSObject.h
//  testblock
//


#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

NS_ASSUME_NONNULL_BEGIN
@protocol TestJSObjectProtocol <JSExport,NSObject>

- (void)ZTHShowPicker;
- (void)testWithParamaer:(NSString*)parame;

@end

@interface TestJSObject : NSObject<TestJSObjectProtocol>

@property (nonatomic,weak)id<TestJSObjectProtocol>delegate;

@end


NS_ASSUME_NONNULL_END

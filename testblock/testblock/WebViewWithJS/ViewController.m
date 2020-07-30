//
//  ViewController.m
//  testblock
//


#import "ViewController.h"
#import <JavaScriptCore/JavaScriptCore.h>
#import "TestJSObject.h"

@interface ViewController ()<UIWebViewDelegate,TestJSObjectProtocol>

@property(nonatomic,strong)UIWebView * webview;
@property(nonatomic,strong)JSContext * aacontext;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.webview];
    
}


- (UIWebView *)webview{
    
    if (!_webview) {
        
        _webview=[[UIWebView alloc]initWithFrame:CGRectMake(0,200,self.view.bounds.size.width,300)];
        
        _webview.delegate =self;
        
        _webview.backgroundColor=[UIColor lightGrayColor];
        
        NSString *htmlPath = [[NSBundle mainBundle]pathForResource:@"index"ofType:@"html"];
        
        NSURL *localUrl = [[NSURL alloc]initFileURLWithPath:htmlPath];
        
        [_webview loadRequest:[NSURLRequest requestWithURL:localUrl]];
        
    }
    
    return _webview;
    
}


-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    //首先创建JSContext对象（此处通过当前webView的键获取到jscontext）
    
    self.aacontext=[webView  valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    TestJSObject *testJO=[TestJSObject new];
    testJO.delegate = self;
    
    self.aacontext[@"testobject"]=testJO;
}


- (void)ZTHShowPicker {
    NSLog(@"fasfasf");
}

-(void)testWithParamaer:(NSString *)parame
{
    NSLog(@"%@",parame);
}


@end

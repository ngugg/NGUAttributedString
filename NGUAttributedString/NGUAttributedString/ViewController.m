//
//  ViewController.m
//  NGUAttributedString
//
//  Created by 周文刚 on 2017/3/8.
//  Copyright © 2017年 周文刚. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self demo1];
}
//http://www.cnblogs.com/xmqios/p/3496615.html
//http://www.cnblogs.com/wlxm/p/4334965.html
/**
 床前明月光，疑是地上霜。
 举头望明月，低头思故乡
 */
- (void)demo1 {
   
//    NSAttributedString *attr1 = [[NSAttributedString alloc] initWithString:@"哈哈哈"];
    
    //1.设置属性文本的字体大小
    NSDictionary *dict1 = @{NSFontAttributeName:[UIFont systemFontOfSize:30]};
    
    //2.设置属性文本的字体颜色
    NSDictionary *dict2 = @{NSForegroundColorAttributeName:[UIColor redColor]};
    
    //3.设置属性文本的每个字符之间的间隔  “床  前  明  月  光”
    // Kern 字距
    NSDictionary *dict3 = @{NSKernAttributeName:@20};
    
    //4.设置属性文本的字体颜色
    //Ligature 连字；连接物 fly 默认1 ，连接 。0 不连接
    //这个属性须配合不同样式的文本字体使用
    
    //可以打印所有的系统字体
//    NSArray *arr = [UIFont familyNames];
//    NSLog(@"%@",arr);
    
    
    NSMutableDictionary *dict4 = [NSMutableDictionary dictionary];
    [dict4 setObject:[NSNumber numberWithInteger:0] forKey:NSLigatureAttributeName];
    [dict4 setObject:[UIFont fontWithName:@"Kohinoor Devanagari" size:40] forKey:NSFontAttributeName];
    
    
    
    
    
    //5.设置属性文本的超链接
    /**
     1. 实现textView的代理，否则调不到回调方法。
     2. 设置textView的 editable 属性为 NO，在可编辑的状态下是不可点击的
     */
    NSDictionary *dict5 = @{NSLinkAttributeName:[NSURL URLWithString:@"https://www.baidu.com"]};
    
    
    
    
    
   
    /**
     6.设置属性文本的字体颜
     MarkedClauseSegment
     Marked : 显著的；有记号的
     Clause : 条款；[计] 子句
     Segment: 段；部分
     */
    //报错
   // NSDictionary *dict6 = @{NSMarkedClauseSegmentAttributeName : @1};
   // MarkedClauseSegment
    
    
    /**
     7.设置属性文本的倾斜程度
     The value of this attribute is an NSNumber object containing a floating point value indicating skew to be applied to glyphs. The default value is 0, indicating no skew
     glyphs : 符号
     skew : 倾斜
     Obliqueness : 倾斜；斜度；歪斜
     */
    NSDictionary *dict7 = @{NSObliquenessAttributeName : @0.1};

    /**
     8.设置属性文本的
     
     */
   // NSDictionary *dict8 = @{NSParagraphStyleAttributeName : @0.1};
    
    /**
     9.设置属性文本的阴影
     shadowColor 阴影颜色
     shadowOffset .y为正值向下偏移，负值向上偏移
                  .x为正值向右偏移，负值向左偏移
     shadowBlurRadius 阴影的效果，值越大效果越突出
     */
    
    NSShadow *shadow = [[NSShadow alloc]init];
    shadow.shadowColor = [UIColor redColor];
    
    shadow.shadowOffset = CGSizeMake(10, 20);
    shadow.shadowBlurRadius = 5;
    NSDictionary *dict9 = @{NSShadowAttributeName : shadow};
    
    
    /**
     10.设置属性文本的
     
     */
  //   NSDictionary *dict10 = @{NSSpellingStateAttributeName : @0.1};
    
    
    /**
     11.设置属性文本的删除线
     NSStrikethroughColorAttributeName : 设置删除线的颜色
     NSStrikethroughStyleAttributeName : 设置删除线的样式
     */
    NSDictionary *dict11 = @{NSStrikethroughColorAttributeName : [UIColor redColor],NSStrikethroughStyleAttributeName:[NSNumber numberWithInteger:NSUnderlineStyleSingle]};
    
    
    /**
     12.设置属性文本的线宽
        stroke width: 笔画宽度
     NSStrokeWidthAttributeName : 设置线宽 ,正值单独渲染线，负值，渲染线，并且填充文本 设置描边宽度，这样就能使文字空心
     NSStrokeColorAttributeName : 设置线的颜色.
     */
    NSDictionary *dict12 = @{NSStrokeWidthAttributeName:@(-5),NSStrokeColorAttributeName
                             :[UIColor redColor]};
    
    
    
    
    /**
     13.设置属性文本的
     */
 //   NSDictionary *dict13 = @{NSSuperscriptAttributeName:@(5)};
    
    
    /**
     14.设置属性文本的下划线
     NSUnderlineStyleAttributeName: 下划线样式
     NSUnderlineColorAttributeName: 下划线的颜色
     */
    NSDictionary *dict14 = @{NSUnderlineStyleAttributeName:[NSNumber numberWithInteger:NSUnderlineStyleThick],NSUnderlineColorAttributeName: [UIColor redColor]};
    
  //  NSVerticalGlyphFormAttributeName
    /**
     15.设置属性文本的排版样式
    0 表示横排文本。1 表示竖排文本。在 iOS 中，总是使用横排文本，0 以外的值都未定义
     1 .无效
     */
    NSDictionary *dict15 = @{NSVerticalGlyphFormAttributeName:[NSNumber numberWithInteger:1]};
    
    
    
    /**
     16.设置属性文本的压缩样式
     正值垂直压缩，负值水平压缩
     */
    NSDictionary *dict16 = @{NSExpansionAttributeName:@1};
    
    
    /**
     17.设置属性文本的偏移量样式
     需要配合其他演示
     */
    NSDictionary *dict17 = @{NSBaselineOffsetAttributeName:@10};

    
    NSAttributedString *attr2 = [[NSAttributedString alloc] initWithString:@"床前明月光" attributes:dict17];
    
    
    
    
   // NSExpansionAttributeName
//    UILabel *label = [[UILabel alloc] init];
//    label.attributedText = attr2;
//    label.bounds = CGRectMake(0, 0, 300, 0);
//    [label sizeToFit];
//    label.center = self.view.center;
//    [self.view addSubview:label];
    
    UITextView *textview = [[UITextView alloc]initWithFrame:CGRectMake(60, 100,  [UIScreen mainScreen].bounds.size.width - 60,[UIScreen mainScreen].bounds.size.height -100 )];
    textview.attributedText = attr2;
    textview.delegate = self;
    [self.view addSubview:textview];
    textview.editable = NO;
    
    
}

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction {
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

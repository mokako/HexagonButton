# HexagonButton
Makes a hexagonal button.

-

### 使用法
横幅基準で六角形の描画をするので横幅に比べて高さが若干少なくなります。
```
[[HexagonButton alloc]initWithFrame:CGRectMake(0,0,100,50 * sqrtf(3))];
```
背景色と枠線の色と太さは、
```
-(void)setBackgroundColor:(UIColor *)backgroundColor;
-(void)setBorder:(UIColor *)color width:(CGFloat)width;
```

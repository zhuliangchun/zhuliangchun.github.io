---
title: "如何在marktext中写markdown文章"
date: 2026-04-21T00:00:00+08:00
draft: false
author: "雨落"
tags: ["markdown", "marktext"]
categories: ["技术"]
cover: "images/write_markdown.webp"
description: "新手写markdown文章必看"
---

# 如何在marktext中写markdown文章

---

## 标题

#+空格+文字

```
# 一级标题
## 二级标题
### 三级标题
最多六层标题
```

--- 

## 分割线

```
---+空格
***+回车  
```

--- 

## 斜体，加粗，粗斜体，删除线，下划线

```
*斜体*        ctrl+I
**加粗**      ctrl+B
***粗斜体***
~~删除线~~
<u>下划线<u>   ctrl+U
```

*斜体*

**加粗**

***粗斜体***

~~删除线~~

<u>下划线</u>

---

## 荧光笔

```
ctrl+shift+H
```

<mark>荧光笔</mark>

---

## 引用

```
> 单层引用
```

> 单层引用

```
> 一层引用
>> 二层引用
>>> 三层引用
>>>> 四层引用
```

> 一层引用
> 
> > 二层引用
> > 
> > > 三层引用
> > > 
> > > > 四层引用

---

## 无序列表

```
+ 列表文本
- 列表文本
* 列表文本
```

- 列表文本

- 列表文本

- 列表文本

--- 

## 嵌套列表

-+两个空格+文本

```
-  一层列表文本
    -  两层列表文本
    -  两层列表文本
-  一层列表文本
    -  两层列表文本
```

- 一层列表文本
      - 两层列表文本
      - 两层列表文本
- 一层列表文本
      - 两层列表文本

---

## 待办

```
- [x] 已完成的任务
- [ ] 未完成的任务
```

- [x] 已完成的任务
- [ ] 未完成的任务

---

## 代码块

```
  ctrl+shift+K
```

---

## 数学公式

$s=v*t$

```
  ctrl+shift+M
  $ 公式 $
```

---

## 链接

```
ctrl+L
```

[这是我的主页](https://zhuliangchun.github.io/)

--- 

## 表格

```
| 1 | 2 | 3 |
| --- | --- | --- |
| a | b | c |
| one | two | three |
```

| 1   | 2   | 3     |
| --- | --- | ----- |
| a   | b   | c     |
| one | two | three |

--- 

## 表情符号

```
:smile: :heart: :thumbsup: :rocket: :fire:
:laughing: :100: :tada: :sparkles:
```

:smile: :heart: :thumbsup: :rocket: :fire:
:laughing: :100: :tada: :sparkles:

---

## 特殊符号

```
© 版权符号 ©
® 注册商标 ®
™ 商标 ™
 < 小于号 <
> 大于号 >
& 和号 &
 " 引号 "
```

&copy; 版权符号 ©
&reg; 注册商标 ®
&trade; 商标 ™
 &lt; 小于号 <
&gt; 大于号 >
&amp; 和号 &
 &quot; 引号 "

---

## 清除格式

$ s=v*t $

 s=v*t 

```
ctrl+shift+R
```

---

## 折叠内容

<details>
<summary>这是一段折叠内容</summary>
1.这是第一句
2.这是第二句
3.这是第三句
</details>

---

## 感谢阅读！

---
title: "Markdown 写作指南：博客文章应该怎么写"
date: 2025-05-20
draft: false
author: "你的名字"
tags: ["Markdown", "写作", "博客"]
categories: ["教程"]
description: "一篇展示各种 Markdown 写法的示例文章，收藏备用。"
---

## 写在前面

这篇是博客的 Markdown 写作指南，用来展示各种语法的效果。写博客其实不难，掌握好 Markdown 就够了。

## 标题

```markdown
## 二级标题
### 三级标题
#### 四级标题
```

效果如下：

### 三级标题
#### 四级标题

## 文字样式

| 语法 | 效果 |
|------|------|
| `**粗体**` | **粗体** |
| `*斜体*` | *斜体* |
| `***粗斜体***` | ***粗斜体*** |
| `~~删除线~~` | ~~删除线~~ |
| `` `行内代码` `` | `行内代码` |

## 引用

> 这是一段引用文字。
> 可以写多行。
> 
> 也可以分段。

## 列表

### 无序列表

- 苹果
- 香蕉
  - 苹果蕉
  - 皇帝蕉
- 橘子

### 有序列表

1. 第一步
2. 第二步
3. 第三步

### 任务列表

- [x] 完成博客搭建
- [x] 配置主题颜色
- [ ] 写第一篇文章
- [ ] 添加评论功能

## 代码块

### 行内代码

我在 `console.log()` 里打了个日志。

### 多行代码

支持语法高亮：

```python
def hello():
    print("Hello, Hugo!")

hello()
```

```javascript
const greet = (name) => {
  console.log(`Hello, ${name}!`);
};

greet('World');
```

## 表格

| 姓名 | 年龄 | 城市 |
|------|:----:|------|
| 小明 | 18 | 北京 |
| 小红 | 20 | 上海 |
| 小刚 | 22 | 深圳 |

## 链接和图片

[我的 GitHub](https://github.com/)

![占位图](https://via.placeholder.com/400x200/ff6b6b/ffffff?text=Blog+Image)

## 数学公式（KaTeX）

如果启用了数学公式渲染，可以这样写：

行内公式：$E = mc^2$

独立公式：

$$
\int_{-\infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}
$$

## 分割线

---

上下都有分割线。

---

## 脚注

这是一段文字，需要注释 [^1]。

[^1]: 这是脚注内容，会显示在文章底部。

## 总结

Markdown 语法简洁，功能强大。Hugo 配合 Reimu 主题，可以轻松写出漂亮的博客文章。开始写吧！

---

**相关阅读：**
- [Hugo 官方文档](https://gohugo.io/documentation/)
- [Reimu 主题仓库](https://github.com/D-Sketon/hugo-theme-reimu)

---
title: "搭建个人博客：我的 Hugo + Reimu 主题折腾记录"
date: 2025-06-01
draft: false
author: "你的名字"
tags: ["Hugo", "博客", "折腾"]
categories: ["技术"]
cover: # "images/banner.webp"  # 注释掉表示用默认 banner
description: "从零开始搭建个人博客，记录我用 Hugo + Reimu 主题的全过程，包括踩坑和优化。"
---

## 为什么选择 Hugo

之前用过 Hexo、WordPress，最终还是选择了 Hugo，理由很简单：**快**。

```bash
hugo server  # 本地预览
hugo         # 静态构建，毫秒级
```

## 主题选择：Reimu

Reimu 是从 Hexo 移植到 Hugo 的主题，继承了东方 Project 灵梦的配色风格，非常适合喜欢二次元的朋友。

主要特点：

- 🎨 红色系主题色，少女祈祷中...
- ⚡ 轻量快速，无冗余依赖
- 📱 响应式布局，适配移动端
- 🌙 支持深色模式

## 搭建过程

### 1. 安装 Hugo

```bash
winget install Hugo.Hugo.Extended
```

### 2. 创建站点

```bash
hugo new site my-blog
cd my-blog
```

### 3. 添加主题

```bash
git init
git submodule add https://github.com/D-Sketon/hugo-theme-reimu themes/reimu
```

### 4. 启动预览

```bash
hugo server
```

打开 http://localhost:1313/ 就能看到效果了。

## 遇到的坑

### 问题一：配色太红

默认主题色是红色系，如果不喜欢，可以在配置文件中修改：

```yaml
internal_theme:
  light:
    --red-0: '#ff0000'  # 改这里
```

### 问题二：菜单多余项

我不需要「友链」页面，只保留：

```yaml
menu:
  - name: home
    url: ""
  - name: archives
    url: "archives"
  - name: about
    url: "about"
```

### 问题三：烟花特效太吵

关闭方法：

```yaml
firework:
  enable: false
```

## 写作体验

用 Markdown 写文章，配合 Typora 或 Obsidian，写作体验非常丝滑。

```markdown
---
title: 文章标题
date: 2025-06-01
tags: ["标签"]
categories: ["分类"]
---

正文内容...
```

## 总结

Hugo + Reimu 的组合非常适合想要快速搭建个人博客的朋友。如果你也想搭一个，欢迎交流！

---

*有问题欢迎留言*

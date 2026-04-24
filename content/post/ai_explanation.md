---
title: "近年AI应用技术の名词解释"
date: 2026-04-23
draft: false
author: "雨落"
tags: ["AI"]
categories: ["技术"]
cover: "/pic/ai1.webp"
description: "全面的AI应用技术名词解释！"
---

# 近年AI应用技术の名词解释

来自于（文档）：[‍‬​‌‌‌⁠​‌​​​﻿‍‌‍​‍﻿​​​⁠﻿⁠​⁠⁠​‌​​​⁠​​‍​⁠‍​​​​​​​​‌​近年 AI 应用技术串讲与优质文档分享｜Agent、Skill、OpenClaw、Harness…… - 飞书云文档](https://oigi8odzc5w.feishu.cn/wiki/WBMfwiNkfi6uNFkRtXdcavDzn0e)

来自于（作者）：【近年AI应用技术串讲与优质文档分享｜Agent、Skill、OpenClaw、Harness……-哔哩哔哩】 https://b23.tv/RBBBT3a

## 笔记

近年 AI 应用技术串讲与优质文档分享｜Agent、Skill、OpenClaw、Harness……

## 一、LLM

### 扫盲：

**LLM** ( **L**arge **L**anguage **M**odel,大型语言模型)：是一个基于海量文本数据训练的模型，能够进行复杂对话、文本创作等任务。

**Token**：文本或数据中的一个基本单元和符号，例如当我们输入"我想吃苹果"， AI 只会把这几个字转换成特定的代码，例如转为"吃"和"苹果"，像这样转化后的最小单位，就是 Token。一个token约为1.5个汉字。

**AI 推理过程**：AI 本身并不会思考，他只会通过前文已经有的 **Token**，计算下一个 **Token** 出现的概率。

### 洞见：

Transformer 架构的提出奠定了大模型时代基础，使基于注意力机制的生成模型成为主流。
Decoder-Only（仅解码器）的 Transformer 架构变体是当下最为主流的架构。

![](/pic/ai1.webp)

- [Attention Is All You Need](https://arxiv.org/abs/1706.03762)

### 拓展：

GPT家族，BERT家族详解：[一文读懂GPT家族和BERT的底层区别——自回归和自编码语言模型详解 - 知乎](https://zhuanlan.zhihu.com/p/625714067)

## 二、Prompt Engineering

### 基础：

提示词（Prompt）是用来引导模型按照特定意图生成输出的输入指令。主要包含「系统提示词」和「用户提示词」。
提示词工程是通过设计和优化提示词，使大模型更准确、可控地产生所需输出。是一种提升效果但不改变模型智力（参数）的低成本调优手段。

### 洞见：

- 一个好的提示词可以从指令，上下文，输入，输出四个方面来写

- 核心原则
  
  > 从简单的指令开始，逐渐迭代
  > 
  > 提示词需要清晰，具体，详细
  > 
  > 提示词中可以举一两个“输入xx，输出xx”的例子
  > 
  > 尽量写“你需要做什么”，而不是“你不需要做什么”
  > 
  > 使用角色扮演，例如“你是一名资深的python开发工程师，xxx”

- 复杂问题怎么办？
  
  > 复杂推理、数学计算、多步骤问题可以用思维链，举一个分步推理的示例，或者直接说“让我们一步步思考”
  > 
  > 极其复杂的问题，可以拆解为多个小问题，或者给出回答步骤
  > 
  > 专业知识则需要接入知识库
  > 
  > 也可以直接让AI给我们写一份专业的提示词，再对ai写的做修改
  > 
  > 可以使用固定的模板，比如CRISPE框架等，来结构化的写提示词

- https://www.aneasystone.com/archives/2024/01/prompt-engineering-notes.html

## 三、Fine-tuning 微调

### 基础：

微调是在已有模型基础上，用特定数据再训练，让模型更适合某个具体任务或场景。
微调要训练的是模型的参数。LoRA 算法通过只训练少量低秩参数来进行微调，大幅降低了训练成本。

### 洞见：

需要卡训练模型，成本高耗时长，调来调去不如等最新的模型。此方法可以让模型更聪明

- [LoRA: Low-Rank Adaptation of Large Language Models](https://arxiv.org/abs/2106.09685)

## 四、RAG

### 基础：

先从外部知识库检索相关信息，再结合这些信息一起生成回答，从而提升模型的准确性和知识时效性。

### 洞见：

建立文档知识库，并作文档切片，模型从切片里面找参考信息，可以降低幻觉（比微调方便，效果不如微调好）。此方法也可以让大模型更聪明。

- [Retrieval-Augmented Generation for Knowledge-Intensive NLP Tasks](https://arxiv.org/abs/2005.11401)

图为RAG流程

![](/pic/ai4.webp)

## 五、Function call

### 基础：

Function Calling 是让大模型按约定格式输出调用指令，从而由外部系统真正去执行具体操作的一种机制。
Function Calling 让模型从“只会说话”变为“会调用工具”。

### 洞见：

此方法可以让大模型长手。功能是自己开发的，定制化的。

- https://platform.openai.com/docs/guides/gpt/function-calling

图为function call流程

![](/pic/ai2.webp)

## 六、MCP

### 基础：

是一种标准化协议，用来让大模型以统一的方式连接外部工具、数据源和服务，从而获取上下文信息并执行操作。
MCP 最重要的贡献之一是使工具可以跨 AI 应用复用，推动社区生态发展。

### 洞见：

此方法也可以让大模型长手。但是功能是可以复用的。

- https://modelcontextprotocol.info/docs/introduction/

图为MCP流程

![](/pic/ai3.webp)

## 七、Agent

### 基础：

Agent 是一种能够基于目标进行“思考-行动-观察”循环、能够自主调用工具来完成复杂任务的智能系统。
Agent 本质上是对人类的模拟。
「提示词 + LLM + Tools」就可以构成一个最简单的 Agent。

### 洞见：

让AI真的像一个实习生。

- https://arxiv.org/abs/2210.03629?utm_source=chatgpt.com

- https://x.com/HiTw93/status/2034627967926825175

- https://x.com/HiTw93/status/2034627967926825175（https://tw93.fun/2026-03-21/agent.html）

- Agent Loop：思考 → 行动 → 观察

- Agent 设计模式
  
  - https://medium.com/binome/ai-agent-workflow-design-patterns-an-overview-cf9e1f609696
  
  - https://mp.weixin.qq.com/s/7CZ6cHWQ-T9bmaWoJFwdwA

## 八、Multi-Agent

### 基础：

由多个分工协作的 Agent 共同完成任务，通过拆分任务与隔离上下文解决单 Agent 系统难以处理的复杂问题。
需要谨慎使用以避免 Token 消耗量大、协作效率低、系统复杂度过高等问题。

### 洞见：

以下三种情况下多Agent优于单Agent架构：1. 业务中存在上下文污染，会给模型降智。2. 任务可以并行运行时，多Agent可以提速。3. 能让任务更加聚焦

划分子Agent按照上下文隔离的边界来分。

- https://claude.com/blog/building-multi-agent-systems-when-and-how-to-use-them

## 九、Context Engineering

### 基础：

Agent 运行中需要提供给 LLM 的一切相关信息（如对话历史、用户输入、背景知识、工具结果等）都是上下文。
上下文工程关注如何高质量筛选、压缩和组织上下文，从而最大化模型决策与推理能力。

### 洞见：

- （better）[【Lanchain】Context Engineering](https://blog.langchain.com/context-engineering-for-agents/)（lanchain）

- [Effective context engineering for AI agents](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents)（Anthropic）

- https://mp.weixin.qq.com/s/KbviOJ6q-K4ik_wzsUs2dw?open_in_browser=true

## 十、Agent Skill

### 基础：

Agent Skills 是一种轻量级的开放格式，用于将一整套 Agent 能力（prompt、工具脚本、知识文件等）
封装为可复用模块，从而实现低门槛分享与复用。
Agent Skill 本质上约等于一个子 Agent。
Agent Skill 特别适合 SOP 的沉淀和复用（离职的同事终将化作温暖的 Skill）。
Agent 会在运行过程中按需激活不同 Skills、按需读取和使用 Skills 文件包里的内容（渐进式披露）。

### 洞见：

- https://claude.com/blog/equipping-agents-for-the-real-world-with-agent-skills

- https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview

- https://agentskills.io/home

## 十一、OpenClaw

- openclaw 代码太长了，可以看精简版 nanobot：https://github.com/HKUDS/nanobot

## 十二、Harness Engineering

### 基础：

Harness Engineering 强调通过构建受控环境，让 Agent 在约束下高效可靠地完成长周期复杂任务。
包含围绕 Agent 构建约束机制、反馈回路、可靠上下文等等一系列工程实践

### 洞见：

- https://openai.com/zh-Hans-CN/index/harness-engineering/

## 十三、分享下 Claude Code 源码

### 洞见：

- https://github.com/instructkr/claw-code

- https://github.com/hesreallyhim/claude-code-fork

- https://www.youtube.com/watch?v=DXTS82fJO9A

文章截止于**2026/4/23**

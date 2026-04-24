# Hugo 博客一键发布脚本 (增强版)
param(
    [string]$msg = "更新博客"
)

$hugoExe = "D:\hugo\hugo_extended_0.160.1_windows-amd64\hugo.exe"
$blogDir = "D:\hugo\hugo_extended_0.160.1_windows-amd64\dev"

Set-Location $blogDir

Write-Host ">>> 步骤1: 生成静态网站..." -ForegroundColor Cyan
& $hugoExe
if ($LASTEXITCODE -ne 0) {
    Write-Host "Hugo 构建失败！请检查错误信息。" -ForegroundColor Red
    exit 1
}

Write-Host ">>> 步骤2: 提交源码到 main 分支..." -ForegroundColor Cyan
git add .
git commit -m $msg
Write-Host ">>> 推送源码到 origin/main..." -ForegroundColor Cyan
git push origin main

Write-Host ">>> 步骤3: 部署网站到 gh-pages 分支..." -ForegroundColor Cyan
Write-Host "尝试方法1: 使用 git subtree..." -ForegroundColor Yellow
# 尝试标准 subtree 推送
git subtree push --prefix public origin gh-pages 2>$null

if ($LASTEXITCODE -ne 0) {
    Write-Host "方法1失败，使用方法2: 强制覆盖 gh-pages 分支..." -ForegroundColor Yellow
    # 方法2: 通过创建一个孤儿分支来强制覆盖
    $currentBranch = git branch --show-current
    # 保存当前的 public 目录
    Copy-Item -Recurse -Force public _temp_site
    
    # 切换到 gh-pages 分支，如果不存在则创建
    git checkout gh-pages 2>$null
    if ($LASTEXITCODE -ne 0) {
        git checkout --orphan gh-pages
    }
    
    # 清空当前 gh-pages 分支的所有文件
    git rm -rf . 2>$null
    # 将 public 目录内容复制过来
    Copy-Item -Recurse -Force _temp_site/* .
    Remove-Item -Recurse -Force _temp_site
    
    # 提交并强制推送
    git add -A
    git commit -m "部署网站: $msg"
    git push origin gh-pages --force
    
    # 切换回原来的分支
    git checkout $currentBranch
}

Write-Host "`n>>> 发布流程完成！" -ForegroundColor Green
Write-Host ">>> 网站正在部署中..." -ForegroundColor Green
Write-Host ">>> 请等待 1-2 分钟，然后访问 https://zhuliangchun.github.io" -ForegroundColor Green
Write-Host ">>> 如果页面有缓存，请按 Ctrl+F5 强制刷新浏览器。" -ForegroundColor Green
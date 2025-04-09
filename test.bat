@echo off
cd /d %~dp0

echo ========== 初始化 Git LFS ==========
git lfs install

echo ========== 添加 .mpp 文件到 Git LFS 追踪 ==========
git lfs track "*.mpp"
git add .gitattributes

echo ========== 添加大文件 ==========
git add *.mpp

echo ========== 提交更改 ==========
git commit -m "Add .mpp files using Git LFS"

echo ========== 推送到远程仓库（WorkFiles2） ==========
git remote set-url origin https://github.com/wanght9186/WorkFiles2.git
git push origin main

echo ========== 操作完成 ==========
pause

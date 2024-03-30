# NSCSCC 2024

## 分工

前端（指令预取、分支预测）：
后端（流水线、指令发射）：
Cache（I-Cache、D-Cache、TLB）：
其他（AXI、外设、系统）：

## Tips

1. 《CPU设计实战》和《超标量处理器设计》
2. 一定要看《龙芯架构32位精简版参考手册》相关部分
3. 多查阅相关资料（前人的设计文档、源码、博客，相关的论文）
4. 有问题可以直接 QQ 联系老师
5. 尽量 2-3 天提交更新一次远程仓库

## 更新远程仓库

首先拉取仓库至本地
`git clone https://github.com/<your name>/NSCSCC2024.git .`

添加上游代码库，上游代码库名称为 upstream
`git remote add upstream https://github.com/Jin-Zhengda/NSCSCC2024.git`

开发时自己创建分支
`git checkout -b <branch name>`

查看自己所处分支
`git branch`

切换到指定分支
`git checkout <branch name>`

合并冲突时，先更新上游代码：
`git fetch upstream`
再合并上游代码至本地：
`git merge upstream/main`
无冲突再进行 push 和 pull request 操作

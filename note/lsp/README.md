# 简介
LSP（Language Server Protocol）：LSP 是一套通信协议，遵从 LSP 规范的客户端（各种编辑器/IDE）可以通过众多 LSP 服务端按协议标准进行通信，由客户端完成用户界面相关的事情，由服务端提编程语言相关的：补全，定义引用查找，诊断，帮助文档，重构等服务

LSP Servers 都是一个个命令行程序，由编辑器（也就是客户端）启动，通过管道发送 JSON RPC 命令同 LSP Server 交流，退出编辑器，LSP 服务端也就关闭了。

[查询LSP 服务端](https://langserver.org/)

# 快捷键
`K`: 光标放在方法上，显示文档
`gd`: 预览函数定义
`gD`: 跳转到函数定义
`gh`: 查看函数引用情况
`gr`: 修改函数名
`ga`: 执行code action
`go`: 打开基于lsp的outline
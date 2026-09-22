# Codex Skill

这是本机 Codex Skill 的私有同步快照，供另一台电脑恢复使用。

## 已同步内容

- `skills/**/SKILL.md`：本机发现的全部 179 个 Skill 定义。
- `skills/` 下的文本类支持文件：脚本、模板、配置、说明文档等。
- `skills/system-reference/`：Codex 系统内置 Skill 的参考快照。
- `skills/plugin-skills/`：已安装插件中包含的 Skill 快照。
- `catalog/`：清单、安装脚本和未上传资源说明。

## 在另一台电脑上使用

1. 克隆这个私有仓库。
2. 把 `skills/local/` 和 `skills/user/` 下的 Skill 复制到该电脑的用户 Skill 目录（通常是 `~/.agents/skills`）。
3. 对 `skills/plugin-skills/` 中的 Skill，优先安装对应插件；只有在明确知道依赖关系时才手动复制。
4. 重启 Codex，使 Skill 清单重新加载。

本次同步没有上传 GitHub 密钥、Codex 登录信息、个人媒体或整个 C 盘内容。二进制资源未走内容接口，详见 `catalog/BINARY-AND-RUNTIME-NOTES.md`。
# Codex Skill

这是本机 Codex Skill 的私有同步快照，供另一台电脑参考或恢复使用。

## 内容

- `skills/local/`：D 盘 Codex 用户 Skill 的完整快照。
- `skills/user/`：用户级 Skill（原位置为 `C:\Users\Administrator\.agents\skills`）。
- `skills/system-reference/`：Codex 系统内置 Skill 的参考快照；不建议覆盖另一台电脑的系统目录。
- `skills/plugin-skills/`：已安装插件中实际包含 `SKILL.md` 的 Skill 快照；插件本体和运行时没有复制进来，另一台电脑应优先重新安装对应插件。
- `catalog/`：清单与恢复说明。

## 在另一台电脑上使用

1. 克隆这个私有仓库。
2. 把 `skills/local/` 和 `skills/user/` 下的 Skill 复制到该电脑的用户 Skill 目录（通常是 `~/.agents/skills`）。
3. 对 `skills/plugin-skills/` 中的 Skill，优先安装对应插件；只有在明确知道依赖关系时才手动复制。
4. 重启 Codex，使 Skill 清单重新加载。

这个仓库只保存 Skill 文件，不保存 GitHub 密钥、Codex 登录信息、个人媒体或整个 C 盘内容。


# Vercel 风格仪表盘：布局与配色参考

来源：Vercel 项目 Overview 页面（Mobbin 截图）设计语言分析。

## 布局

### 三段式框架
- **左侧固定侧边栏**（约占 15–20% 宽）：项目/组织切换 + 全局搜索 + 一级导航（Overview / Deployments / Logs / Analytics / Speed Insights / Observability / Firewall / CDN）+ 底部用户信息。当前选中项用浅灰底高亮。
- **顶部 Header**：横跨剩余宽度，左侧项目名 + 页面标题，右侧操作按钮（如 Repository / Instant Rollback / Visit）。
- **主内容区**：可滚动，卡片分区。

### 主卡片与栅格
- 大卡片：左半预览（iframe/截图）+ 右半元数据（ID / Domains / Status / Source / commit）。
- 下方 3 列栅格：进度清单（Checklist 4/6）、数据卡（折线图 + 指标）、趋势卡。
- 非模态 Popover（如 Visit 菜单）：二维码 + CTA，不阻断主流程。
- 间距节奏：留白充足；卡片间 margin、卡片内 padding；层级靠背景深浅与灰阶区分，而非粗边框。

## 配色

| 用途 | 色值 |
|---|---|
| 主背景 | `#FFFFFF` / `#FAFAFA` |
| 卡片/分区浅灰 | `#F9F9F9`、`#F3F3F3`、`#F9FBFC` |
| 深色元素（CTA 按钮/Logo/侧栏强调） | `#111111` ~ `#2F2F2F` |
| 品牌蓝（链接/图表/对勾） | `#0070F3` |
| 成功/就绪状态 | `#10B981`（或 `#00C853`） |
| 主文字 | `#111827` |
| 次要文字 | `#6B7280` |
| 禁用/未完成态 | `#9CA3AF` / `#D1D5DB` |
| 边框/分割线 | `#E5E7EB` |

## 设计原则
- 极简：黑白灰打底，彩色只用于「蓝=可交互/关注」「绿=正常状态」。
- 黑色 CTA 是最大视觉焦点。
- 信息层级优先用灰阶和留白表达。

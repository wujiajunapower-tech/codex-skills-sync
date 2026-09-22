---
name: dashboard-elements-reminder
description: Remind and confirm which Vercel-style dashboard elements and color palette a frontend should include before implementation. Use when the user asks to design, build, or review any frontend UI — landing pages, dashboards, web apps, admin panels, 前端设计/页面布局/配色 — and remind them whether they need elements like sidebar navigation, top header, card grids, status indicators, analytics cards, and the black/white/gray + brand-blue palette.
---

# Dashboard Elements Reminder

设计/构建前端前，先过一遍元素清单并向用户确认，再动手写代码。

## 工作流

1. 收到前端设计或开发请求时，先**不要写代码**，展示下面的元素清单。
2. 按场景给出默认建议，让用户确认保留/去掉哪些元素：
   - **布局**：左侧固定侧边栏导航（项目/菜单/用户信息）、顶部 Header（项目名+标题+操作按钮）、主内容卡片区、三列栅格数据卡片、非模态浮层/弹窗（如二维码弹窗）。
   - **组件**：部署/运行状态指示（绿色 Ready 圆点）、Checklist 进度（如 4/6）、数据卡片（Observability/Analytics：请求数、调用数、错误率、访客趋势）、黑色 CTA 按钮（Visit / Install Extension 风格）、空状态与禁用态。
   - **配色**：黑白灰打底 + 品牌蓝 `#0070F3` 强调 + 成功绿 `#10B981` 状态 + 黑色 CTA。完整色板见 [references/vercel-dashboard-style.md](references/vercel-dashboard-style.md)。
3. 默认建议：
   - 仪表盘/后台/数据产品 → 全要素（侧边栏 + Header + 卡片栅格 + 状态/数据卡）。
   - 落地页/营销页 → 只保留 Header、主视觉区、CTA 按钮；不需要侧边栏和后台数据卡。
   - 简单展示页/个人页 → 最简：单一内容区 + 一个主 CTA。
4. 用户确认后按确认结果实现。若用户明确要求「简单点 / 不要侧边栏 / 换主色」等，尊重其选择，不再推销清单元素。

详细布局与色值参考见 [references/vercel-dashboard-style.md](references/vercel-dashboard-style.md)。

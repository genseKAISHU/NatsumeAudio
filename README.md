# NatsumeAudio 项目说明文档

## 项目简介
NatsumeAudio(夏目音频)是一个基于 Django 框架构建的音乐专辑电商网站项目，包含商品展示、购物车管理、用户登录注册等功能。项目使用了Vue3前端框架进行页面渲染，并集成了支付宝支付接口。

## 项目结构
```
NatsumeAudio/
├── commodity/          # 商品模块
├── shopper/            # 用户购物模块
├── index/              # 首页模块
├── templates/          # 模板文件
├── Allstatic/          # 静态资源
└── manage.py           # Django 管理脚本
```

## 主要功能

### 商品模块 (commodity)
- 商品分类展示
- 商品详情页
- 商品收藏功能

### 购物模块 (shopper)
- 用户登录/注册
- 购物车管理
- 订单生成
- 支付宝支付集成

### 首页模块 (index)
- 首页轮播图展示
- 商品推荐
- 分类导航

## 技术栈
- 后端: Python + Django
- 前端: HTML + CSS + JavaScript + Layui
- 数据库: SQLite (默认)
- 支付接口: 支付宝沙箱环境

## 安装部署

### 环境准备
1. Python 3.12+
2. Django 4.2
3. MySQL

### 安装步骤
```bash
# 1. 克隆项目
git clone https://gitee.com/yourname/NatsumeAudio.git

# 2. 进入项目目录
cd NatsumeAudio

# 3. 安装依赖
pip install -r requirements.txt

# 4. 数据库迁移
python manage.py migrate

# 5. 创建管理员账号
python manage.py createsuperuser

# 6. 运行开发服务器
python manage.py runserver
```

## 使用说明

### 用根目录中的backup.sql的脚本文件，来连接数据库！

### 启动项目
访问 http://127.0.0.1:8000/ 进入首页

### 后台管理
访问 http://127.0.0.1:8000/admin 登录后台管理界面

### 支付测试
确保在 `shopper/views.py` 中配置了正确的支付宝沙箱参数

## 文件结构说明
- `Allstatic/`: 静态资源文件
- `templates/`: 页面模板
- `commodity/`: 商品相关业务逻辑
- `shopper/`: 用户购物相关业务逻辑
- `index/`: 首页相关业务逻辑

## 注意事项
1. 生产环境请更换为正式的支付宝接口配置
2. 静态资源路径可能需要根据实际部署环境调整
3. 用户上传文件存储在 `media/` 目录下

## 版权信息
本项目中使用的 Layui 框架遵循 MIT 协议
商品图片等素材请遵守相应授权协议

## 贡献指南
欢迎提交 Pull Request，请遵循以下规范：
1. 创建 issue 描述问题或需求
2. 创建 feature 分支
3. 提交代码并关联 issue
4. 通过代码审查后合并

## 问题反馈
遇到任何问题请在 Gitee 仓库提交 issue 或联系作者邮箱：2423485349@qq.com
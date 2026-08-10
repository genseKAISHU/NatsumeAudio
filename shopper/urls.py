from django.urls import path,re_path
# 从当前应用views模块导入所有的视图
from .views import *

urlpatterns = [
    # 根据根路径映射到indexView，命名是index，可以用于模板和代码中的反向解析URL
    path('.html',shopperView,name='shopper'),
    path('/login.html',loginView,name='login'),
    path('/logout.html',logoutView,name='logout'),
    path('/shopcart.html',shopcartView,name='shopcart'),# 购物车页

# 删除商品API路由
    path('/delete.html', deleteAPI, name='delete'),
# 支付页面路由
    path('/pays.html', paysView, name='pays'),
    path('pay_callback/ ', payCallbackView, name="pay_callback"),
]
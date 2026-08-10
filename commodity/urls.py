from django.urls import path
# 从当前应用views模块导入所有的视图
from .views import *


urlpatterns = [
    # 根据根路径映射到indexView，命名是index，可以用于模板和代码中的反向解析URL
    path('.html',commodityView,name='commodity'),
    path('/detail.<int:id>.html',detailView,name='detail'),
    path('/collect.html',collectView,name='collect'),
]
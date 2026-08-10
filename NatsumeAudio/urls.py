"""
URL configuration for NatsumeAudio project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf import settings
from django.contrib import admin
from django.urls import path, re_path,include
from django.views.static import serve

urlpatterns = [
    path('admin/', admin.site.urls),
    # 添加项目应用的url
    # 路由地址为/，访问127.0.0.1：8000，路由函数include就将该路由地址分发给项目应用的urls.py处理
    path('',include(('index.urls','index'),namespace='index')),
    path('shopper',include(('shopper.urls','shopper'),namespace='shopper')),
    path('commodity',include(('commodity.urls','commodity'),namespace='commodity')),
    # 配置媒体资源的路由信息
    # re_path:使用正则表达式定义更灵活的URL路由规则
    # serve:Django提供的用于处理静态文件的视图函数，常用于开发环境
    # settings:项目配置模块，用来获取媒体文件和静态文件的路径
    re_path('media/(?P<path>.*)', serve,
            {'document_root':settings.MEDIA_ROOT}, name='media'),
]
# 在文件最后追加写
from index import views
# 定义404和500异常的路由信息
handler404 = views.page_not_found
handler500 = views.page_error# 在文件最后追加写
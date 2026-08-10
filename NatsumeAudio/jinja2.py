from jinja2 import Environment
from django.contrib.staticfiles.storage import staticfiles_storage
from django.urls import reverse


def environment(**options):
    env = Environment(**options)

    # 添加 Django 的静态文件和 URL 反向解析
    env.globals.update({
        'static': staticfiles_storage.url,
        'url': reverse,
    })

    # 可以添加自定义过滤器
    # env.filters['my_filter'] = my_filter_function

    return env
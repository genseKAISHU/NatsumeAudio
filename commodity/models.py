from django.db import models
from django.utils.html import format_html

"""
定义Django模型，用于管理商品信息
Types模型：
存储商品的分类信息，采用的是两级分类（一级分类和二级分类）
CommodityInfos模型：
存储商品的详细信息，包括名称、规格、价格、库存等
自动记录商品的上架日期(auto_now_add=True)
支持商品主图和介绍图片文件的上传
"""
# Create your models here.
class Types(models.Model):
    """
    商品类型模型，用于存储商品的分类信息
    """
    # 自增主键
    id = models.AutoField(primary_key=True)
    # 一级分类标签
    firsts = models.CharField('一级分类', max_length=100)
    # 二级分类标签
    seconds = models.CharField('二级分类', max_length=100)

    def __str__(self):
        """
        字符串表示方法，返回id的字符串形式
        """
        return str(self.id)

    class Meta:
        """
        元数据类，用于定义模型在Admin界面的显示名称
        """
        verbose_name = '商品类型'  # 单数形式的显示名称
        verbose_name_plural = '商品类型'  # 复数形式的显示名称


class CommodityInfos(models.Model):
    """
    商品信息模型，用于存储商品的详细信息
    """
    id = models.AutoField(primary_key=True)
    name = models.CharField('商品名称', max_length=100)
    sezes = models.CharField('颜色规格', max_length=100)
    types = models.CharField("商品类型", max_length=100)
    price = models.FloatField("商品价格")
    discount = models.FloatField("折后价格")
    stock = models.IntegerField('存货数量')
    sold = models.IntegerField('已售数量')
    likes = models.IntegerField('收藏数量')
    create = models.DateTimeField('上架日期', auto_now_add=True)
    img = models.FileField("商品主图", upload_to=r'imgs')
    details = models.FileField("商品介绍", upload_to=r'details')

    def __str__(self):
        return str(self.id)

    class Meta:
        verbose_name = '商品信息'
        verbose_name_plural = '商品信息'

        '''
        通过已有的数据库反向生成models
        python manage.py inspectdb > app/models.py
        '''

    # 自定义函数，设置字体颜色
    def colored_name(self):
        if '童装' in self.types:
            color_code = 'red'
        else:
            color_code = 'blue'
        return format_html(
            '<span style="color: {};">{}</span>',
            color_code,
            self.types,
        )

    # 设置Admin的字段名称,以字段的形式显示在Admin后台系统的模型的数据列表页
    colored_name.short_description = '带颜色的商品类型'

# 练习4
#     from django.contrib.auth.models import User
#
#     class UserFavorite(models.Model):
#         user = models.ForeignKey(User, on_delete=models.CASCADE)
#         commodity = models.ForeignKey(CommodityInfos, on_delete=models.CASCADE)
#         created_at = models.DateTimeField(auto_now_add=True)
#
#         class Meta:
#             unique_together = ('user', 'commodity')  # 防止重复收藏
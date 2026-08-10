from django.shortcuts import render
from django.views.generic import TemplateView

from commodity.models import Types, CommodityInfos


# Create your views here.
def indexView(request):
    """
    处理首页请求
    """
    title = "首页"  # 页面标题
    # 当前网页为首页的时候，首页的class='active'，
    # 当前页为所有商品的时候，对应的class='active'
    classContent = ""  # 用于页面样式控制的变量
    # 获取销量最高的8个商品，按照销量降序排列，这些数据将会显示在每日必抢中
    commodityInfos = CommodityInfos.objects.order_by("-sold").all()[:8]
    # 获取所有的商品分类
    types = Types.objects.all()
    # 筛选儿童服饰分类下的二级分类，以列表形式返回
    c1 = [x.seconds for x in types if x.firsts == '儿童服饰']
    # 获取儿童服饰分类下销量最高的5个商品
    clothes = CommodityInfos.objects.filter(types__in=c1).order_by('-sold')[:5]
    # 筛选奶粉辅食分类下的二级分类
    f1 = [x.seconds for x in types if x.firsts == '奶粉辅食']
    # 获取奶粉辅食分类下销量最高的5个商品
    food = CommodityInfos.objects.filter(types__in=f1).order_by('-sold')[:5]
    # 筛选儿童用品分类下的二级分类
    g1 = [x.seconds for x in types if x.firsts == '儿童用品']
    goods = CommodityInfos.objects.filter(types__in=g1).order_by('-sold')[:5]
    # 将所有的变量传递给模板进行渲染
    return render(request, 'index.html', locals())

# 基于类的视图，处理首页请求，功能和indexView相同

class indexClassView(TemplateView):
    # 指定渲染的模板
    template_name = 'index.html'
    # 可选，指定模板引擎
    template_engine = None
    # 可选，指定响应的Content-type
    content_type = None
    # 额外的模板上下文的变量
    extra_context = {'title': '首页', 'classContent': ''}

    # 重写获取上下文数据的方法
    def get_context_data(self, **kwargs):
        # 获取父类的上下文
        context = super(indexClassView, self).get_context_data(**kwargs)
        # 获取销量最高的8个商品
        context['commodityInfos'] = CommodityInfos.objects.order_by("-sold").all()[:8]
        # 获取所有商品分类
        types = Types.objects.all()
        # 筛选商品
        cl = [x.seconds for x in types if x.firsts == '儿童服饰']
        context['clothes'] = CommodityInfos.objects.filter(types__in=cl).order_by('-sold')[:5]
        fl = [x.seconds for x in types if x.firsts == '奶粉辅食']
        context['food'] = CommodityInfos.objects.filter(types__in=fl).order_by('-sold')[:5]
        gl = [x.seconds for x in types if x.firsts == '儿童用品']
        context['goods'] = CommodityInfos.objects.filter(types__in=gl).order_by('-sold')[:5]
        return context

    def get(self, request, *args, **kwargs):
        """
        处理HTTP GET请求
        request代表HTTP请求信息
        如果路由设置了路由变量，那么可以从参数kwargs中获取
        """
        # 获取上下文数据
        context = self.get_context_data(**kwargs)
        # 渲染模板并返回响应
        return self.render_to_response(context)

    def post(self, request, *args, **kwargs):
        """
        处理HTTP POST请求
        """
        context = self.get_context_data(**kwargs)
        return self.render_to_response(context)

def page_not_found(request, exception):
    return render(request, '404.html', status=404)


def page_error(request):
    return render(request, '404.html', status=500)
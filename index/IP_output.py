#练习1
class IPLoggingMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        # 获取客户端的IP地址
        x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
        if x_forwarded_for:
            ip = x_forwarded_for.split(',')[0]
        else:
            ip = request.META.get('REMOTE_ADDR')

        # 输出当前请求的IP地址
        print(f"当前请求的IP地址是: {ip}")

        # 继续处理请求
        response = self.get_response(request)
        return response
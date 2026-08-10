from alipay import AliPay

# 支付宝公钥，用于验证支付回调签名
alipay_public_key_string = """-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAniSTTO+CFd8nYiXAIvulVjMtZ2B3QWBqfEOZG7PDFHulMB31YCoSrt7Xp2EXsxNZrhf+0rCtZVLr9vKD+IjequRc/+SrBiApZkILhUsbodGXx8nHIcFwz1XmIzjcQY1WnYbo9LN9Ic8pwsGSZqN/DQpB4OzUkwEYozw2qJhBLDnYJZBnrs8xdE27aW5Zr8h0f7oQDnO7Ve+LqS1O7FVAxrRcC7z+2tOPZMqbTPSWKfT8nKyxGKCslDcA94ilyONAoAcMGzUsUoB2160VHg/dFgmPamGYr8X1UiR3rLpGNsllwS/EDR9nRqL/sk/18JwZldyJQxDwQhvC91XqdEqZ/wIDAQAB
-----END PUBLIC KEY-----"""
# 应用私钥，用于生成支付签名，我们需要转换私钥格式
# https://opendocs.alipay.com/common/02khjp?pathHash=e5a2e515
app_private_key_string = """-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEArwRvCGFVmotr9gAeI1t2jBNfCxw44KIVAhpTSSSv6lt99lulXwpCFjr1PdCwpGvv4PxheRxa9eZXUs+9IeA9Cln50yoT6SCZNuQErVyjejc5BaNc9KVatoI3PPCJe6pIDQOQXCuxHoqrN+39PBYi6BlAQ5o42fcT4hJwEC0Y1/4CvMsmUcsa6G+yG4ywjx/ZrMLj7vf+0bJtMp9csqe6zD1p/4sDWhgxadDSu3hW1ix7D+5dzGsS679C0vjma1hl/5hcgvscj1M+UIDyQ4w+ZOQWB7nq1gG6mmGVRKxDc04tQ+h0vGF71ebmVTmYirym1HdKuTKF2FGNPb6bA8s+LwIDAQABAoIBAANv29pXRv4U9NbM48qf9jEEBF7MfBV1OWJkL/SEwuugRlX7MMEwC2IyYDSJj556/Cf37NYbB3JCxr46lCVBKRG1+KD7944hdMDOM4VQB2nUAcupjJ7FTIW/AuSweJK0IlwXENOui/jkkj4z70Ap0x+pt0hck/c70ekjoY2/xPgg3Y5z5K8v8vBv2aahEKToacTituG5tVVRObMa9/nIQYaO2YD6sKYsWWl/7W3CS1Uw9eABCzE7hAAgIXnLbxk9/Qhzc7fdxrgZEGACp062M4GCNfuNXT9dEWg36AoNI+FNdCSuqyUOC99AXAxWtDYZAE7fz3dqkHibf5A+jYfYozkCgYEA1k2IaMWDnZMY0/8cAmBdHvlrzNp07BR8sNOiFOGx27aV4ciEY3wNR8/HK2xFqrh0jeTeFaXjbCPgffP3R3hqvxmDwPvqk2s3lzvuABG1P7cpKN1PO570yZKJJf5OTuVyOZ4+l8hrNHZUfAoVDKqy7acZ9gifz/U1zKJfvAGK/8UCgYEA0RIUkMbVFwQGsEQUh5ldvwRmc+J3uTk4UX1KPlFpYM/15CV7qKWNSFBfZiDoD9+Zesz+iiJpK+ykkSs1KQ71J+fGM9S9q/nIacz1vgHNAYVoR7fGOVBy1Id8FpGFJ5YlqNQ/FOb+pcwhxXSQ2BkVYOKMzZVQ5JjrlOW9mRx5UWMCgYEA0kVhAuxKJ+KdCeXWZb6HoEy7KVVwQ/QWJKqC7lpFWX/dsJw+yh5+KWgF1OV3tfsm4dMe1b7fVswdCXjHuKi+lKNEU6bak6sv8IQtEoRNgycEi8QaajWdmereBxlvXJplaYOLhwJvrhos60g5PyR+TBEZt/7eT/4Zu5/Wr3IUIMECgYAYa5s5WfAz8wVw+1LGj/RyRmpNKOvBF9zrL85HPy0m4MOg9XvfNA8vniu2eyuABycfP+iPa/uK5OZICpr4A8ZA9gKhtTy+ZLuzF/ywR/eRMOsATYf609nF11l4LWE3QYN+l+QSZfTimthq/vWYOD3WBkBaFxHO0cnap4cg5kGJbwKBgQCsX3AKZ2PeRyDngzhbjEoZoD6x55JJxDPkOOK7J+kr0PNwUZLFCPQCZn+432Ho/3cifERTo8qPtC/LveR9Gis3wsfaFOkmTC7qZRc8/i2OkZxnPhPIl7bKXMBZ6mbG4dOx/dlJgfJj4Ucory3sA696v0v4+EGJ+eUPLnpYCIQNhA==
-----END RSA PRIVATE KEY-----"""

def get_pay(out_trade_no, total_amount, return_url):
    """
    生成支付宝的支付链接
    :param out_trade_no: 商户订单号
    :param total_amount: 支付金额
    :param return_url: 支付成功后的回调URL地址
    :return: 支付宝支付页面URL
    """
    # 初始化支付宝SDK实例
    alipay = AliPay(
        # 自己的支付宝应用ID，沙箱环境的
        appid='9021000150625408',
        # 异步通知地址，None表示使用默认
        app_notify_url=None,
        app_private_key_string=app_private_key_string,
        alipay_public_key_string=alipay_public_key_string,
        # 签名算法
        sign_type='RSA2'
    )

    # 生成支付宝页面支付请求参数
    order_string = alipay.api_alipay_trade_page_pay(
        # 商户的订单号，唯一，建议使用时间戳+随机数生成
        out_trade_no=out_trade_no,
        # 支付金额，转换为字符串主要是为了避免精度问题
        total_amount=total_amount,
        # 订单的标题
        subject='测试',
        # 支付成功后，同步回调地址
        return_url=return_url + "?t=" + out_trade_no,
        # 支付成功后的异步通知地址
        notify_url=return_url + "?t=" + out_trade_no,
    )
    # 拼接支付宝网关URL，生成一个可以访问的支付链接
    return "https://openapi-sandbox.dl.alipaydev.com/gateway.do?" + order_string
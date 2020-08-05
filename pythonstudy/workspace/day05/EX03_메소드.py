# 메소드
# 1. 인스턴스 메소드
#   1)인스턴스(객체)마다 다르게 동작하는 메소드
#   2)첫 번째 매개변수는 self를 사용
#   3) 호출방법
#       (1) 인스턴스.메소드(파라미터)
#       (2) 클래스.메소드(인스턴스,파라미터)
# 2. 정적메소드
#   1) 인스턴스(객체)의 생성없이 호출할 수있는 메소드
#   2) 매개변수 self를 사용하지않음
#   3) 데코레이터(자바의 애너테이션) @staticmethod를 추가
# 3. 클래스 메소드
#   1) 인스턴스(객체)의 생성 없이 호출 할수있는 메소드
#   2) 클래스 변수를 사용하는 메소드
#   3) 첫번째 매개변수는 cls 를 사용
#   4) 데코레이터

# self뒤에있는 변수뒤에있는것을인스턴스 변수 필드 파이썬은 변수 선언없음


class Service:

     def __init__(self,serve):
        self.serve = serve

     def service_info(self):
        print('서비스종류:{}'.format(self.serve))


obj1 = Service('청소')
obj1.service_info()# 메소드 호출1
Service.service_info(obj1)# 메소드호출2
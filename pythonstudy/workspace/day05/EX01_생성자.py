# 클래스
# 1.클래스 정의
# class 클래스명 :
#  본문

# 2. 객체(인스턴스)생성
# 객체명 = 클래스명 ()
#
# 3. 생성자 (initializer)
# 1) 객체가 생성될 때 자동으로 호출되는 메소드
# 2) 객체의 초기화를 위해서 사용
# 3) 생성자 : __init__(self,매개변수,...)
# 4) self :생성된 객체를 의미


class Service:

    def __init__(self):
        print('Servie 인스턴스 생성')


obj1 = Service() #obj1 객체생성 ( 생성자 자동 호출 )
obj2 = Service() #obj2 객체생성 ( 생성자 자동 호출 )




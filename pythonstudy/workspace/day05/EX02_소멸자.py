# 소멸자 (Destructor)
# 1. 객체가 소멸될떄 자동으로 호출되는 메소드
# 2. 객체 소멸: del 객체명
# 3. 소멸자: __del__(self)
#

class Service:

    def __del__(self):
        print('Service 객체소멸')



obj1 = Service()
del obj1 # 객체 소멸 (소멸 자 자동호출)

obj2 = Service()
del obj2 # 객체 소멸 (소멸 자 자동호출)
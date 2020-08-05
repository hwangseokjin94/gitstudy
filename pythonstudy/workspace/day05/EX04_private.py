# private
# 1. 클래스 내부에서만 접근이 가능한 변수
# 2. __로 시작하는 변수


class Person :

    def __init__(self,name,age):

        self.__name =name # self.__name =name 네임앞에 __하면 private 이됨
        self.__age = age

    def person_info(self):
        print('이름:{}, 나이: {}살'.format(self.__name,self.__age))


person1 =Person('에밀리',20)
person1.person_info()


person2 =Person('제임스',25)
person2.name = '앨리스' #private 변수로 막아야하는 코드
person2.age = 35 #private 변수로 막아야하는 코드


person2.person_info()
# 완벽한 private 은 아니다.
print(dir(person2))
#print(person2.__name)#접근불가
print(person2._Person__name)#접근가능 (__named의 변환된이름)
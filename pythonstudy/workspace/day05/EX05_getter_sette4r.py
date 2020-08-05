# getter
# 1.private 변수의 값을 호출할수 있는 메소드
# 2. 데코레이터 @property가 추가
# setter
# 1. private 변수의 값을 변경할수 있는 메소드
# 2. 데코레이터 @getter메소드명.setter



class Person:

    def __init__(self):
        self.__name = ''
        self.__age = 0

    #getter
    @property
    def name(self):
        return self.__name

    #getter
    @property
    def age(self):
        return self.__age

    #setter
    @name.setter
    def name(self ,name):
        self.__name = name

    @age.setter
    def age(self ,age):
        self.__age = age


person = Person()

#setter
person.name = '에밀리'
person.age = 20

#getter
print('이름 : {}'.format(person.name))
print('나이: {}'.format(person.age))



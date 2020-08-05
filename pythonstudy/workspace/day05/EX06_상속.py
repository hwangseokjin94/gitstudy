# 상속
#
# 1. 슈퍼클래스 : 부모
# 2. 서브클래스 : 자식


# 수퍼클래스
class Person:

    def __init__(self, name):
        self.__name = name

    def person_info(self):
        print('이름:{}'.format(self.__name))


# 서브클래스
class Student(Person):

    def __init__(self, name, school):
        # name 처리는 super 클래스의 생성자로 한다.
        super().__init__(name)
        self.__school = school

    def student_info(self):
        super().person_info()
        print('학교:{}'.format(self.__school))


student = Student('에밀리', '이대')
student.student_info()

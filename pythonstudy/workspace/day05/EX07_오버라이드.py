# 메소드 오버라이드
#
# 1. 수퍼클래스와 서브클래스가 동일한 메소드를 가지는 경우
# 2. 서브클래스의 오버라이드 된 메소드가 호출
# 3. 수퍼클래스의 메소드는 super() 를 통해서 호출


# 수퍼클래스
class Employee:

    def pay(self, salary):
        self.__salary = salary
        print('기본급:{}'.format(self.__salary))


# 서브클래스
class Salaryman(Employee):

    def pay(self, salary, incentive):
        super().pay(salary)
        self.__incentive = incentive
        print('인센티브:{}'.format(self.__incentive))


staff = Salaryman()
staff.pay(300, 100)  # Salaryman 의 pay 메소드 호출

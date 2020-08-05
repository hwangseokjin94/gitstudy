# 세트
# 1. 순서가 없는(인덱스가 없는) 목록형이다.
# 2. 중복이 허용되지 않는다.
# 3. 리스트의 중복을 제거하는 필터링 역할로 자주 사용된다.
# 4. {}로 묶는다.

my_set = {1, 2, 3, 1, 2, 3}
print(my_set)

# print(my_set[0])  # 인덱스 지원이 안 된다.


# 리스트의 중복을 제거하는 과정
my_list = [5, 4, 3, 2, 1, 1, 2, 3, 4, 5]
temp_set = set(my_list)  # 리스트 -> 세트 (중복은 이 과정에서 제거된다. 순서도 유지되지 않는다.)
my_list = list(temp_set)  # 세트 -> 리스트

# my_list = list(set(my_list))  위 과정을 한 번에 처리한다.

print(my_list)

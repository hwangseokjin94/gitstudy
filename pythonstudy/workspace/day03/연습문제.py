#성적관리프로그램
#학생1명당 성적이1개있다.
#사전 구조로 여러학생의 성적을 관리한다.
def menu():
    print()
    print('1>>>>>성적입력')
    print('2>>>>>성적삭제')
    print('3>>>>>성적변경')
    print('4>>>>>성적조회')
    print('5>>>>>성적종료')
    print()
    return int(input(':::작업을 선택하세요'))
def insert(exam_dict):
    print("<<<성적입력>>>")
    name = input('이름을 입력하세요>>')
    score = int(input('점수를 입력하세요>>>'))
    # exam_dict = {'에밀리':90} => exam_dict['에밀리'] == 90
    exam_dict[name]= score
    print('<<<<<새로운 성적이 입력 되었습니다.>>>>>')

def delete(exam_dict):
    print('<<<<성적 삭제>>>>')
    name = input('삭제할 학생의 이름을 입력하세요')
    if name in exam_dict: #존재 여부 검사
        if  input('정말 삭제할까요? (Y/N)>>>').strip().upper() == 'Y':
            del exam_dict[name]
            print('<<<<<{}학생의 성적이 삭제되었습니다.'.format(name))
        else:
            print('삭제가 취소되었습니다')
    else:
        print('{}학생은 없는 학생입니다.다시시도하세요.'.format(name))

def update(exam_dict):
    print('<<<<성적 수정>>>>')
    name = input('수정할 학생의 이름을 입력하세요')
    if name in exam_dict:
        score = int(input('{}학생의 새로운 성적을 입력하세요>>'.format(name)))
        exam_dict[name] = score
        print('<<<<{}학생의 성적이 수저오디었습니다.>>>'.format(name))
    else:
        print('{}학생은 없는 학생입니다.다시시도하세요.'.format(name))

def search(exam_dict):
    print('<<<<성적 조회>>>')
    name = input('조회할 학생의 이름을 입력하세요')
    if name in exam_dict:
        print('{}학생의 성적은  {} 점 입니다.'.format(name,exam_dict[name]))
    else:
        print('{}학생은 없는 학생입니다.다시시도하세요.'.format(name))

def stop():
    print('성적관리 프로그램을 종료합니다. 감사합니다.')
def score_handler():
    my_dict= {}
    while True:
        choice = menu()
        if choice == 1:
            insert(my_dict)
        elif choice == 2:
            delete(my_dict)
        elif choice == 3:
            update(my_dict)
        elif choice == 4:
            search(my_dict)
        elif choice == 5:
            stop()
            return
        else:
            print('없는 명령입니다. 다시시도하세요')

score_handler()

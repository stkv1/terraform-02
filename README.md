# Домашнее задание к занятию «Основы Terraform. Yandex Cloud»

## Задание 1

Скриншоты запущенной ВМ:

![vm1](https://github.com/stkv1/terraform-02/blob/main/pic/23.PNG)

![vm2](https://github.com/stkv1/terraform-02/blob/main/pic/24.PNG)

Первая ошибка:

`platform standart-v4 not found`

Платформы *standart-v4* в Yandex Cloud не существует

Правильный вариант *standard-v3*

Вторая ошибка

`the specified core fraction is not available on platform "standard-v3"; allowed core fractions: 20, 50, 100`

*core fraction* может быть только 20, 50 или 100

Третья ошибка

`the specified number of cores is not available on platform "standard-v3"; allowed core number: 2, 4`

Доступное число ядер может быть 2 или 4


## Задание 2

Проект с кодом задания в папке [task-02](https://github.com/stkv1/terraform-02/tree/main/task-02)

## Задание 3

Проект с кодом задания в папке [task-03](https://github.com/stkv1/terraform-02/tree/main/task-03)

## Задание 4

Проект с кодом задания в папке [task-04](https://github.com/stkv1/terraform-02/tree/main/task-04)

Output:

![vm1](https://github.com/stkv1/terraform-02/blob/main/pic/04-2.PNG)

![vm1](https://github.com/stkv1/terraform-02/blob/main/pic/04-3.PNG)

## Задание 5

Проект с кодом задания в папке [task-05](https://github.com/stkv1/terraform-02/tree/main/task-05)

## Задание 6

Проект с кодом задания в папке [task-06](https://github.com/stkv1/terraform-02/tree/main/task-06)

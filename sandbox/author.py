def get_mean(values):
    divisible = 0
    for value in values:
        divisible += value
    return divisible / len(values)


# num_lst = [3, 6, 5, 7, 9, 1]
# mean = get_mean(num_lst)
# print(f'{mean:.2f}')
from typing import List


def lyginiai(numbers: List[int]) -> List[int]:
    return [x for x in numbers if x % 2 == 0]

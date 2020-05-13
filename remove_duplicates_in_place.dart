int removeDuplicates(List list) {
  if (list.length == 1 || list.isEmpty || list == null) return 0;

  var i = 0;
  var j = 1;
  var index = 0;

  while (j < list.length) {
    if (list[i] != list[j]) {
      list[index++] = list[j];
    }
    i++;
    j++;
  }

  return index + 1;
}

void main() {
  print(removeDuplicates([1, 1, 2]));
  print(removeDuplicates([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]));
}

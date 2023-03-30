// Create a list of integers and find the longest subsequence of consecutive
// numbers in the list

import 'dart:io';

void main() {
  List<int> integers = [2, 3, 4, 5, 9, 8, 7];
  List<int> longestsubsequence = [];

  for (int i = 0; i < integers.length; i++) {
    List<int> currentSubsequence = [integers[i]];

    for (int c = 1; c < integers.length; c++) {
      if (integers[c] == currentSubsequence.last + 1) {
        currentSubsequence.add(integers[c]);
      } else {
        break;
      }
    }
    if (currentSubsequence.length > longestsubsequence.length) {
      longestsubsequence = currentSubsequence;
    }
  }

  print(longestsubsequence);
}

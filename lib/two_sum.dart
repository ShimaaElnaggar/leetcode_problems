// Two Sum
//
// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
// You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
// You can return the answer in any order.
//
//
//
// Example 1:
//
// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]
// Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
// Example 2:
//
// Input: nums = [3,2,4], target = 6
// Output: [1,2]
// Example 3:
//
// Input: nums = [3,3], target = 6
// Output: [0,1]
//

List<int> twoSum(List<int> nums, int target) {
  Map<int, int> numIndices = {};
  for (int i = 0; i < nums.length; i++) {
    int complement = target - nums[i];
    if (numIndices.containsKey(complement)) {
      return [numIndices[complement]!, i];
    }
    numIndices[nums[i]] = i;
  }

  return [];
}
// List<int> twoSum(List<int> nums, int target) {
//   List<int> output = [];
//   for (int i = 0; i < nums.length; i++) {
//     for (int j = 1; j < nums.length; j++) {
//       if (nums[i] + nums[j] == target && i != j) {
//         output.add(i);
//         output.add(j);
//         return output;
//       }
//     }
//   }
//   return output;
// }

void main() {
  var result = twoSum([2, 3, 4], 7);
  print(result);
}

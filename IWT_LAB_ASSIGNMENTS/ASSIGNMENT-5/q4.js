let arr = [10, 20, 5, 40, 15];
let sum = 0;
let largest = arr[0];
let smallest = arr[0];

for (let i = 0; i < arr.length; i++) {
    sum += arr[i];
    if (arr[i] > largest) largest = arr[i];
    if (arr[i] < smallest) smallest = arr[i];
}

let average = sum / arr.length;
console.log("Sum:", sum);
console.log("Average:", average);
console.log("Largest:", largest);
console.log("Smallest:", smallest);

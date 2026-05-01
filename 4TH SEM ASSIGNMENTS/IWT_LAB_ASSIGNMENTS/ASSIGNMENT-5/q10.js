function separateEvenOdd(arr) {
    let even = [];
    let odd = [];
    for (let i = 0; i < arr.length; i++) {
        if (arr[i] % 2 === 0) {
            even.push(arr[i]);
        } else {
            odd.push(arr[i]);
        }
    }
    return { even, odd };
}

let result = separateEvenOdd([1, 2, 3, 4, 5, 6]);
console.log("Even:", result.even);
console.log("Odd:", result.odd);

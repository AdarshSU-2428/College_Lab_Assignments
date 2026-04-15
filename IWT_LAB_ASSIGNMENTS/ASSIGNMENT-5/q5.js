let arr2 = [12, 35, 1, 10, 34, 1];
let first = -Infinity, second = -Infinity;

for (let i = 0; i < arr2.length; i++) {
    if (arr2[i] > first) {
        second = first;
        first = arr2[i];
    } else if (arr2[i] > second && arr2[i] !== first) {
        second = arr2[i];
    }
}
console.log("Second Largest:", second);

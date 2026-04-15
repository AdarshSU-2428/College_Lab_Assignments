let arr4 = [1, 2, 2, 3, 4, 3, 5, 1];
let countMap = {};

for (let i = 0; i < arr4.length; i++) {
    countMap[arr4[i]] = (countMap[arr4[i]] || 0) + 1;
}
console.log("Occurrences:", countMap);

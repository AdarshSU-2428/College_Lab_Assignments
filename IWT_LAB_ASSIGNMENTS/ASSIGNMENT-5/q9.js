function isArmstrong(num) {
    let sum = 0;
    let temp = num;
    let digits = num.toString().length;

    while (temp > 0) {
        let digit = temp % 10;
        sum += Math.pow(digit, digits);
        temp = Math.floor(temp / 10);
    }

    return sum === num;
}

console.log("153 is Armstrong?", isArmstrong(153));
console.log("123 is Armstrong?", isArmstrong(123));

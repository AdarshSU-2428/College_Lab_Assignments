let number = 121;
let temp = number;
let reversed = 0;

while (temp > 0) {
    let digit = temp % 10;
    reversed = reversed * 10 + digit;
    temp = Math.floor(temp / 10);
}

console.log("Reversed:", reversed);
if (number === reversed) {
    console.log(number, "is a Palindrome");
} else {
    console.log(number, "is not a Palindrome");
}

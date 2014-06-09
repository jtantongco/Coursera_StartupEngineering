#!/usr/bin/env node

//returns -1 if not prime otherwise returns n if n is prime
var isPrime = function(n){
	if( n < 2) { 
		return -1; 
	} else if(n == 2 || n == 3) { 
		return n; 
	} else {
		//!!! Need sieve optimization here
		for(var i = 2; i < n-1; i++){
			if(n % i == 0){
				return -1;
			}
		}
		return n;
	}
};

// Find first K prime numbers via basic for loop
var firstkprimes = function(k) {
    var i = 1;
    var arr = [];

    while(arr.length < 100){
	if(isPrime(i) > 0){
        	arr.push(isPrime(i));
	}
	i++;
    }
    return arr;
};

// Print to console
var fmt = function(arr) {
    return arr.join(",");
};
var fs = require('fs');
var outfile = "primes.txt";

var k = 100;
var listOfPrimes = fmt(firstkprimes(k));
fs.writeFileSync(outfile,listOfPrimes);

console.log("firstkprimes(" + k + ")");
console.log(fmt(firstkprimes(k)));

console.log("Script " + __filename + "\nWrote: " + k + " Primes\nTo: " + outfile);


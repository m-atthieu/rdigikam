function fraction(decimal){
	if(!decimal){
		decimal=this;
	}
	whole = String(decimal).split('.')[0];
	decimal = parseFloat("."+String(decimal).split('.')[1]);
	num = "1";
	for(z=0; z<String(decimal).length-2; z++){
		num += "0";
	}
	decimal = decimal*num;
	num = parseInt(num);
	for(z=2; z<decimal+1; z++){
		if(decimal%z==0 && num%z==0){
			decimal = decimal/z;
			num = num/z;
			z=2;
		}
	}
	return ((whole==0)?"" : whole+" ")+decimal+"/"+num;
};
Number.prototype.fraction = fraction;

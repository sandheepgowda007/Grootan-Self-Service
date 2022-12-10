var count = 0;
function getBotResponse(input) {
    //rock paper scissors
	count = count+1;
	if(count==1)
		return "Your Nick Name";
	else if(count==2)
		return "Your Favorate Cricket Player";
	else if(count==3)
		return "Your Favorate Sports";
	else if(count==4)
		return "Your Favorate Hero";
	else if(count==5)
		return "Your Favorate Place";	
}
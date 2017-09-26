int sum = 0;
void setup()
{
	size(500, 500);
	noLoop();
}
void draw()
{
	background(22, 118, 27);
	for(int y = 0; y < 450; y += 75)
	{
		for(int x = 0; x < 500; x += 75)
		{
			Die cube = new Die(x, y);
			cube.show();
			sum = sum + cube.num;
		}
	}
	textSize(25);
	text("The sum is " + sum + ".", 160, 470);
}
void mousePressed()
{
	redraw();
	sum = 0;
}
class Die //models one single dice cube
{
	int myX, myY, num;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		num = (int)(Math.random() * 6 + 1);
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		strokeWeight(1);
		fill(255);
		rect(myX, myY, 50, 50, 15);
		strokeWeight(10);
		if(num == 1)
		{
			point(myX + 25, myY + 25);
		}
		else if(num == 2)
		{
			point(myX + 10, myY + 10);
			point(myX + 40, myY + 40);
		}
		else if(num == 3)
		{
			point(myX + 25, myY + 25);
			point(myX + 10, myY + 10);
			point(myX + 40, myY + 40);
		}
		else if(num == 4)
		{
			point(myX + 10, myY + 10);
			point(myX + 40, myY + 10);
			point(myX + 10, myY + 40);
			point(myX + 40, myY + 40);
		}
		else if(num == 5)
		{
			point(myX + 10, myY + 10);
			point(myX + 40, myY + 10);
			point(myX + 10, myY + 40);
			point(myX + 40, myY + 40);
			point(myX + 25, myY + 25);
		}
		else
		{
			point(myX + 10, myY + 10);
			point(myX + 40, myY + 10);
			point(myX + 10, myY + 40);
			point(myX + 40, myY + 40);
			point(myX + 10, myY + 25);
			point(myX + 40, myY + 25);
		}
	}
}

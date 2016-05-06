
clear
echo '/VVV***** Welcome to circle utility *****VVV\'
echo -e "Enter the radius of the circle: \c"
read circle
echo ""

# Area Formula
Find_Area=$(echo "scale=2;3.14 * ($circle * $circle)" | bc)

# Circumference Formula 
data=$(echo "scale=2;2 * $circle"| bc)
Find_Circumference=$(echo "scale=2;3.14 * $data"| bc)
  
echo "The area of the circle is: $Find_Area"
echo "The circumference of the circle is: $Find_Circumference"

IFS = '.' $(cat "version.txt") | read -ra VER_SEG
VERS_INCREMENT = ${VER_SEG[${#VER_SEG[@]}-1]} + 1
BUILD_NUM = ""
for((i=0; i<${#VER_SEG[@]}-1; i++ ));
do
  BUILD_NUM += "${VER_SEG[$i]}."
done
BUILD_NUM += VERS_INCREMENT
echo "$BUILD_NUM" > "version.txt"
EXPORT BUILD_NUM

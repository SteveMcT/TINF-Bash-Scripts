read -p "Enter the shortcut of a teacher: " teacher
echo "The subject of $teacher is"

case $teacher in
  HY | GU | SL | LT)
    echo "NVS & NVSU"
    ;;

  SY | PL)
    echo "English"
    ;;

  RR | HX)
    echo "Geography"
    ;;

  *)
    echo "unknown"
    ;;
esac
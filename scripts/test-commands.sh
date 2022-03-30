# -d Verzeichnis	Ist wahr, wenn "Verzeichnis" existiert.
# -e Datei	Ist wahr, wenn Datei existiert.
# -f Datei	Ist wahr, wenn reguläre Datei existiert.
# -w Datei	Ist wahr, wenn die Datei existiert und Schreibzugriff erlaubt ist.
# -x Datei	Ist wahr, wenn Datei existiert und Ausführbar ist.
# -n String	Ist wahr, wenn String nicht leer ist. (Bsp. eine Variable)
# -z String	Ist wahr, wenn String leer ist. (Bsp. eine Variable)
# String1 = String2	Ist wahr, wenn String1 gleich String2 ist.
# Zahl1 -eq Zahl2	Ist wahr, wenn Zahl1 gleich Zahl2 ist. (-eq = equal)
# Zahl1 -lt Zahl2	Ist wahr, wenn Zahl1 kleiner Zahl2 ist. (-lt = less than)
# Zahl1 -gt Zahl2	Ist wahr, wenn Zahl1 größer Zahl2 ist. (-gt = greater than)
# Zahl1 -le Zahl2	Ist wahr, wenn Zahl1 kleiner oder gleich Zahl2 ist. (-le = less or equal)
# Zahl1 -ge Zahl2	Ist wahr, wenn Zahl1 größer oder gleich Zahl2 ist. (-ge = greater or equal)
# Zahl1 -ne Zahl2	Ist wahr, wenn Zahl1 nicht gleich Zahl2 ist. (-ne = not equal)
# ! foo	Ist wahr, wenn foo falsch ist, also eine Negation.

if [ -e $1 ]; then
    echo "Datei existiert"
elif [ -d $1 ]; then
    echo "Verzeichnis existiert"
else 
    "Datei oder Verzeichnis existiert nicht"
fi


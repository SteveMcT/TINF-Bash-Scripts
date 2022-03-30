# Print arguments passed to the script
echo "Total arguments : $#"

for arg in "$@"; do
    echo "$arg"
done
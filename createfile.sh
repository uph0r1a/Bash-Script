for i in {4..14}; do #edit n = the number of files
    cat << EOF > ex$i.java
public class ex$i {
    public static void main(String[] args) {
        
    }
}
EOF
done
src_dir="" #directory to copy from
dest_dir="" #directory to copy to 

# Loop over files exx.cpp to exy.cpp from the source
for i in {x..y}; do 
    src_file="$src_dir/ex$i.cpp"
    
    # Calculate the destination file number (exx → exX, exx+1 → exX+1, etc.)
    dest_num=$((i - 4))
    dest_file="$dest_dir/ex$dest_num.cpp"
    
    # Copy content from source to destination (overwrite destination)
    if [ -f "$src_file" ]; then
        cp "$src_file" "$dest_file"
        echo "Copied $src_file → $dest_file"
    else
        echo "Source file $src_file does not exist!"
    fi
done


# read in parameters
echo "name: $1"
echo "output_path: $2"
echo "input_path: $3"
echo "promoter_path: $4"
echo "start: $5"
echo "end: $6"

# pattern matching for dna_vcf files
pattern = "*.vcf"
files=$(find "input_path" -name "$pattern")

for file in $files; do
    full_path="$input_folder/$file"

    # run script
    python3 "variantPromoterRegion.py" "-n $name" "-o $output_dir" "-v $full_path" "-p $promoter_path" "-s $start" "-e "$end"